/* 801FE8DC 001FB81C  3C 80 80 3C */ lis r4, lbl_803BF160@ha
/* 801FE8E0 001FB820  38 04 F1 60 */ addi r0, r4, lbl_803BF160@l
/* 801FE8E4 001FB824  90 03 00 00 */ stw r0, 0(r3)
/* 801FE8E8 001FB828  38 00 00 0A */ li r0, 0xa
/* 801FE8EC 001FB82C  B0 03 00 38 */ sth r0, 0x38(r3)
/* 801FE8F0 001FB830  B0 03 00 3A */ sth r0, 0x3a(r3)
/* 801FE8F4 001FB834  38 00 00 00 */ li r0, 0
/* 801FE8F8 001FB838  98 03 00 3C */ stb r0, 0x3c(r3)
/* 801FE8FC 001FB83C  98 03 00 3D */ stb r0, 0x3d(r3)
/* 801FE900 001FB840  C0 02 AA E0 */ lfs f0, lbl_804544E0-_SDA2_BASE_(r2)
/* 801FE904 001FB844  D0 03 00 08 */ stfs f0, 8(r3)
/* 801FE908 001FB848  C0 02 AA E4 */ lfs f0, lbl_804544E4-_SDA2_BASE_(r2)
/* 801FE90C 001FB84C  D0 03 00 0C */ stfs f0, 0xc(r3)
/* 801FE910 001FB850  C0 22 AA F8 */ lfs f1, lbl_804544F8-_SDA2_BASE_(r2)
/* 801FE914 001FB854  D0 23 00 10 */ stfs f1, 0x10(r3)
/* 801FE918 001FB858  C0 02 AB 50 */ lfs f0, lbl_80454550-_SDA2_BASE_(r2)
/* 801FE91C 001FB85C  D0 03 00 14 */ stfs f0, 0x14(r3)
/* 801FE920 001FB860  D0 23 00 18 */ stfs f1, 0x18(r3)
/* 801FE924 001FB864  C0 42 AB 54 */ lfs f2, lbl_80454554-_SDA2_BASE_(r2)
/* 801FE928 001FB868  D0 43 00 20 */ stfs f2, 0x20(r3)
/* 801FE92C 001FB86C  D0 23 00 28 */ stfs f1, 0x28(r3)
/* 801FE930 001FB870  C0 22 AB 58 */ lfs f1, lbl_80454558-_SDA2_BASE_(r2)
/* 801FE934 001FB874  D0 23 00 30 */ stfs f1, 0x30(r3)
/* 801FE938 001FB878  C0 02 AB 5C */ lfs f0, lbl_8045455C-_SDA2_BASE_(r2)
/* 801FE93C 001FB87C  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 801FE940 001FB880  D0 43 00 24 */ stfs f2, 0x24(r3)
/* 801FE944 001FB884  C0 02 AB 60 */ lfs f0, lbl_80454560-_SDA2_BASE_(r2)
/* 801FE948 001FB888  D0 03 00 2C */ stfs f0, 0x2c(r3)
/* 801FE94C 001FB88C  D0 23 00 34 */ stfs f1, 0x34(r3)
/* 801FE950 001FB890  4E 80 00 20 */ blr
