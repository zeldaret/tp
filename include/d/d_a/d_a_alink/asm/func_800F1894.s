/* 800F1894 000EE7D4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800F1898 000EE7D8  7C 08 02 A6 */ mflr r0
/* 800F189C 000EE7DC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800F18A0 000EE7E0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800F18A4 000EE7E4  7C 7F 1B 78 */ mr r31, r3
/* 800F18A8 000EE7E8  38 80 00 42 */ li r4, 0x42
/* 800F18AC 000EE7EC  4B FD 06 C1 */ bl daAlink_c_NS_commonProcInit
/* 800F18B0 000EE7F0  7F E3 FB 78 */ mr r3, r31
/* 800F18B4 000EE7F4  38 80 00 96 */ li r4, 0x96
/* 800F18B8 000EE7F8  38 A0 00 02 */ li r5, 2
/* 800F18BC 000EE7FC  3C C0 80 39 */ lis r6, lbl_8038DC9C@ha
/* 800F18C0 000EE800  38 C6 DC 9C */ addi r6, r6, lbl_8038DC9C@l
/* 800F18C4 000EE804  4B FB BE 2D */ bl daAlink_c_NS_setUpperAnimeParam
/* 800F18C8 000EE808  7F E3 FB 78 */ mr r3, r31
/* 800F18CC 000EE80C  38 80 00 E8 */ li r4, 0xe8
/* 800F18D0 000EE810  38 A0 00 01 */ li r5, 1
/* 800F18D4 000EE814  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 800F18D8 000EE818  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 800F18DC 000EE81C  4B FB DB D5 */ bl daAlink_c_NS_setFaceBck
/* 800F18E0 000EE820  38 00 00 02 */ li r0, 2
/* 800F18E4 000EE824  98 1F 2F 96 */ stb r0, 0x2f96(r31)
/* 800F18E8 000EE828  7F E3 FB 78 */ mr r3, r31
/* 800F18EC 000EE82C  38 80 00 01 */ li r4, 1
/* 800F18F0 000EE830  4B FF D0 29 */ bl daAlink_c_NS_setSyncRide
/* 800F18F4 000EE834  A0 1F 1F 80 */ lhz r0, 0x1f80(r31)
/* 800F18F8 000EE838  28 00 00 19 */ cmplwi r0, 0x19
/* 800F18FC 000EE83C  40 82 00 14 */ bne lbl_800F1910
/* 800F1900 000EE840  7F E3 FB 78 */ mr r3, r31
/* 800F1904 000EE844  38 80 00 02 */ li r4, 2
/* 800F1908 000EE848  C0 22 92 BC */ lfs f1, lbl_80452CBC-_SDA2_BASE_(r2)
/* 800F190C 000EE84C  4B FB C1 E1 */ bl daAlink_c_NS_resetUnderAnime
lbl_800F1910:
/* 800F1910 000EE850  3C 60 80 39 */ lis r3, lbl_8038DE8C@ha
/* 800F1914 000EE854  38 63 DE 8C */ addi r3, r3, lbl_8038DE8C@l
/* 800F1918 000EE858  A8 03 00 56 */ lha r0, 0x56(r3)
/* 800F191C 000EE85C  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800F1920 000EE860  38 00 00 00 */ li r0, 0
/* 800F1924 000EE864  B0 1F 30 04 */ sth r0, 0x3004(r31)
/* 800F1928 000EE868  80 1F 05 74 */ lwz r0, 0x574(r31)
/* 800F192C 000EE86C  64 00 10 00 */ oris r0, r0, 0x1000
/* 800F1930 000EE870  90 1F 05 74 */ stw r0, 0x574(r31)
/* 800F1934 000EE874  38 60 00 01 */ li r3, 1
/* 800F1938 000EE878  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800F193C 000EE87C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800F1940 000EE880  7C 08 03 A6 */ mtlr r0
/* 800F1944 000EE884  38 21 00 10 */ addi r1, r1, 0x10
/* 800F1948 000EE888  4E 80 00 20 */ blr