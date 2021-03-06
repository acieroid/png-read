(asdf:defsystem png-read
  :version "0.3"
  :description "A library for reading PNG files."
  :licence "BSD-style"
  :components ((:file "package")
               (:file "png-state" :depends-on ("package"))
               (:file "deinterlace" :depends-on ("package" "png-state"))
               (:file "decode" :depends-on ("package" "png-state"))
               (:file "crc" :depends-on ("package"))
               (:file "critical-chunks" :depends-on ("package" "png-state"))
               (:file "ancillary-chunks" :depends-on ("package" "png-state"))
               (:file "basic-chunks" :depends-on ("package" "crc" "critical-chunks" "ancillary-chunks" "png-state")))
  :depends-on (:iterate :chipz :babel))
