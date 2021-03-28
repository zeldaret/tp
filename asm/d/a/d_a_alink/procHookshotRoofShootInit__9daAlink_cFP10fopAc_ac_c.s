lbl_8010CC80:
/* 8010CC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010CC84  7C 08 02 A6 */	mflr r0
/* 8010CC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010CC8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010CC90  93 C1 00 08 */	stw r30, 8(r1)
/* 8010CC94  7C 7E 1B 78 */	mr r30, r3
/* 8010CC98  7C 9F 23 78 */	mr r31, r4
/* 8010CC9C  38 80 00 C8 */	li r4, 0xc8
/* 8010CCA0  4B FB 52 CD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010CCA4  7F C3 F3 78 */	mr r3, r30
/* 8010CCA8  A8 1E 30 20 */	lha r0, 0x3020(r30)
/* 8010CCAC  2C 00 00 00 */	cmpwi r0, 0
/* 8010CCB0  38 80 01 30 */	li r4, 0x130
/* 8010CCB4  40 82 00 08 */	bne lbl_8010CCBC
/* 8010CCB8  38 80 01 31 */	li r4, 0x131
lbl_8010CCBC:
/* 8010CCBC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8010CCC0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 8010CCC4  4B FA 03 1D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010CCC8  7F C3 F3 78 */	mr r3, r30
/* 8010CCCC  4B FA A4 9D */	bl setFastShotTimer__9daAlink_cFv
/* 8010CCD0  7F C3 F3 78 */	mr r3, r30
/* 8010CCD4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010CCD8  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 8010CCDC  38 80 00 00 */	li r4, 0
/* 8010CCE0  4B FA EA 91 */	bl setSpecialGravity__9daAlink_cFffi
/* 8010CCE4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010CCE8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8010CCEC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8010CCF0  C0 02 96 00 */	lfs f0, lit_30895(r2)
/* 8010CCF4  D0 1E 2B 98 */	stfs f0, 0x2b98(r30)
/* 8010CCF8  7F C3 F3 78 */	mr r3, r30
/* 8010CCFC  7F E4 FB 78 */	mr r4, r31
/* 8010CD00  4B FF E9 45 */	bl initHookshotRoofWaitActor__9daAlink_cFP10fopAc_ac_c
/* 8010CD04  7F C3 F3 78 */	mr r3, r30
/* 8010CD08  4B FF C4 69 */	bl initHookshotReady__9daAlink_cFv
/* 8010CD0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010CD10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010CD14  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8010CD18  64 00 00 01 */	oris r0, r0, 1
/* 8010CD1C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8010CD20  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010CD24  60 00 40 00 */	ori r0, r0, 0x4000
/* 8010CD28  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8010CD2C  38 00 00 FF */	li r0, 0xff
/* 8010CD30  98 1E 08 28 */	stb r0, 0x828(r30)
/* 8010CD34  38 00 00 00 */	li r0, 0
/* 8010CD38  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010CD3C  A8 1E 05 9C */	lha r0, 0x59c(r30)
/* 8010CD40  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8010CD44  38 60 00 01 */	li r3, 1
/* 8010CD48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010CD4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8010CD50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010CD54  7C 08 03 A6 */	mtlr r0
/* 8010CD58  38 21 00 10 */	addi r1, r1, 0x10
/* 8010CD5C  4E 80 00 20 */	blr 
