;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.foobar.hedtrot.com. admin.foobar.hedtrot.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
; name servers - NS records
    IN      NS      ns1.foobar.hedtrot.com.

; name servers - A records
ns1.foobar.hedtrot.com.        IN      A       172.16.128.1

; 172.16.128.0/17 - A records
tomcat.foobar.hedtrot.com.        IN      A    172.16.128.1
