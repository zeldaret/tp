lbl_8010D5F4:
/* 8010D5F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010D5F8  7C 08 02 A6 */	mflr r0
/* 8010D5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010D600  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010D604  7C 7F 1B 78 */	mr r31, r3
/* 8010D608  38 80 00 CB */	li r4, 0xcb
/* 8010D60C  4B FB 49 61 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010D610  7F E3 FB 78 */	mr r3, r31
/* 8010D614  A8 1F 30 20 */	lha r0, 0x3020(r31)
/* 8010D618  2C 00 00 00 */	cmpwi r0, 0
/* 8010D61C  38 80 01 3A */	li r4, 0x13a
/* 8010D620  40 82 00 08 */	bne lbl_8010D628
/* 8010D624  38 80 01 3B */	li r4, 0x13b
lbl_8010D628:
/* 8010D628  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010D62C  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8010D630  4B F9 F9 B1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010D634  7F E3 FB 78 */	mr r3, r31
/* 8010D638  4B FA 9B 31 */	bl setFastShotTimer__9daAlink_cFv
/* 8010D63C  7F E3 FB 78 */	mr r3, r31
/* 8010D640  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010D644  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8010D648  38 80 00 00 */	li r4, 0
/* 8010D64C  4B FA E1 25 */	bl setSpecialGravity__9daAlink_cFffi
/* 8010D650  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010D654  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8010D658  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8010D65C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D664  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010D668  64 00 02 00 */	oris r0, r0, 0x200
/* 8010D66C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010D670  7F E3 FB 78 */	mr r3, r31
/* 8010D674  4B FF BA FD */	bl initHookshotReady__9daAlink_cFv
/* 8010D678  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8010D67C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8010D680  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010D684  60 00 40 00 */	ori r0, r0, 0x4000
/* 8010D688  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010D68C  38 00 00 00 */	li r0, 0
/* 8010D690  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8010D694  A8 1F 05 9C */	lha r0, 0x59c(r31)
/* 8010D698  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8010D69C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8010D6A0  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8010D6A4  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8010D6A8  B0 1F 31 0C */	sth r0, 0x310c(r31)
/* 8010D6AC  7F E3 FB 78 */	mr r3, r31
/* 8010D6B0  4B FF B9 C1 */	bl setHookshotReadyMaterial__9daAlink_cFv
/* 8010D6B4  38 60 00 01 */	li r3, 1
/* 8010D6B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010D6BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010D6C0  7C 08 03 A6 */	mtlr r0
/* 8010D6C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8010D6C8  4E 80 00 20 */	blr 
