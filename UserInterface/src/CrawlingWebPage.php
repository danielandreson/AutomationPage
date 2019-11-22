<?php
set_time_limit(1000); // Set execution length in seconds
include("libs/PHPCrawler.class.php");

// Extend the provided base class and override the handler functions
class NanoCrawler extends PHPCrawler 
{
    // Process the document contents in $DocInfo->source here
    function handleDocumentInfo($DocInfo) 
    {
        echo "Page requested: ".$DocInfo->url." (".$DocInfo->http_status_code.")\n";
        echo "Referer-page: ".$DocInfo->referer_url."\n";
        if ($DocInfo->received == true) {
            echo "Content received: ".$DocInfo->bytes_received." bytes\n";
        } else {
            echo "Content not received\n"; 
        }
        echo "Links found: ".count($DocInfo->links_found_url_descriptors)."\n\n";

        flush();
    } 

    // Process the headers like http_status_code, content_type, content_length,
    // content_encoding, transfer_encoding, cookies, source_url
    function handleHeaderInfo($header) {
        print_r($header);
    }
}

// Instantiate the new custom crawler class we defined
$crawler = new NanoCrawler();

// Set rules and params
$crawler->setURL("example.com");
$crawler->addContentTypeReceiveRule("#text/html#");

// Ignore links to pictures, dont even request pictures
$crawler->addURLFilterRule("#\.(jpg|jpeg|gif|png)$# i");

// Store and send cookie-data like a browser does
$crawler->enableCookieHandling(true);

// Set the traffic-limit to 10 MB  (in bytes)
$crawler->setTrafficLimit(1000 * 1024 * 10);

// Set user agent. It's not polite to lie about your user agent.
// If you are creating a bot or crawler it is good to set the user agent as
// something unique that includes a way to contact like website.
// This allows people to report any problems or block your user agent
// if it causing problems. There are other situations where a website
// will reject anything but a familiar user agent. Sometimes just putting
// "firefox" as a user agent will bypass filters.
$crawler->setUserAgentString("Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.116 Safari/537.36");

// Delay between requests in seconds
$crawler->setRequestDelay(0); 

// Max number of pages to crawl
$crawler->setPageLimit(5, true);

// Skip items listed in robots.txt (or not)
$crawler->obeyRobotsTxt(false);

// Follow redirects
$crawler->setFollowMode(1); 

// Run it. May take a while.
$crawler->go(); 

// Output crawl report
$report = $crawler->getProcessReport();
echo "Summary:\n";
echo "Links followed: " . $report->links_followed . "\n";
echo "Documents received: " . $report->files_received . "\n";
echo "Bytes received: " . $report->bytes_received . " bytes\n";
echo "Process runtime: " . $report->process_runtime . " sec\n"; 
echo "Memory peak usage: " . (($report->memory_peak_usage / 1024) / 1024) . " MB\n";