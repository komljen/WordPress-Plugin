    # Add an easy way to see whether custom Fastly VCL has been uploaded
    if ( req.http.Fastly-Debug ) {
        set resp.http.Fastly-WordPress-VCL-Uploaded = "1.2.15";
    } else {
        remove resp.http.Fastly-WordPress-VCL-Uploaded;
    }
