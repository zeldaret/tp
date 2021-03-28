lbl_800F2B4C:
/* 800F2B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F2B50  7C 08 02 A6 */	mflr r0
/* 800F2B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F2B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F2B5C  7C 7F 1B 78 */	mr r31, r3
/* 800F2B60  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2B64  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2B68  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800F2B6C  7F E4 FB 78 */	mr r4, r31
/* 800F2B70  38 A0 00 00 */	li r5, 0
/* 800F2B74  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FBFF@ha */
/* 800F2B78  38 C6 FB FF */	addi r6, r6, 0xFBFF /* 0x0000FBFF@l */
/* 800F2B7C  4B F5 05 F1 */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800F2B80  2C 03 00 00 */	cmpwi r3, 0
/* 800F2B84  40 82 00 0C */	bne lbl_800F2B90
/* 800F2B88  38 60 00 00 */	li r3, 0
/* 800F2B8C  48 00 00 D8 */	b lbl_800F2C64
lbl_800F2B90:
/* 800F2B90  38 00 00 05 */	li r0, 5
/* 800F2B94  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 800F2B98  7F E3 FB 78 */	mr r3, r31
/* 800F2B9C  38 80 00 4E */	li r4, 0x4e
/* 800F2BA0  4B FC F3 CD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F2BA4  A0 1F 1F 80 */	lhz r0, 0x1f80(r31)
/* 800F2BA8  28 00 00 19 */	cmplwi r0, 0x19
/* 800F2BAC  40 82 00 14 */	bne lbl_800F2BC0
/* 800F2BB0  7F E3 FB 78 */	mr r3, r31
/* 800F2BB4  38 80 00 02 */	li r4, 2
/* 800F2BB8  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F2BBC  4B FB AF 31 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F2BC0:
/* 800F2BC0  7F E3 FB 78 */	mr r3, r31
/* 800F2BC4  4B FF AE 61 */	bl setSyncRidePos__9daAlink_cFv
/* 800F2BC8  7F E3 FB 78 */	mr r3, r31
/* 800F2BCC  4B FF C1 CD */	bl setBaseRideAnime__9daAlink_cFv
/* 800F2BD0  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F2BD4  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 800F2BD8  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800F2BDC  7F E3 FB 78 */	mr r3, r31
/* 800F2BE0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F2BE4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800F2BE8  7D 89 03 A6 */	mtctr r12
/* 800F2BEC  4E 80 04 21 */	bctrl 
/* 800F2BF0  28 03 00 00 */	cmplwi r3, 0
/* 800F2BF4  41 82 00 30 */	beq lbl_800F2C24
/* 800F2BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800F2BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800F2C00  80 83 5D B8 */	lwz r4, 0x5db8(r3)
/* 800F2C04  38 00 00 03 */	li r0, 3
/* 800F2C08  98 04 16 B8 */	stb r0, 0x16b8(r4)
/* 800F2C0C  38 60 00 00 */	li r3, 0
/* 800F2C10  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800F2C14  38 00 00 01 */	li r0, 1
/* 800F2C18  90 04 17 40 */	stw r0, 0x1740(r4)
/* 800F2C1C  90 64 17 28 */	stw r3, 0x1728(r4)
/* 800F2C20  48 00 00 10 */	b lbl_800F2C30
lbl_800F2C24:
/* 800F2C24  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F2C28  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F2C2C  D0 03 05 2C */	stfs f0, 0x52c(r3)
lbl_800F2C30:
/* 800F2C30  7F E3 FB 78 */	mr r3, r31
/* 800F2C34  38 80 01 0C */	li r4, 0x10c
/* 800F2C38  4B FB 98 19 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F2C3C  A0 83 00 02 */	lhz r4, 2(r3)
/* 800F2C40  7F E3 FB 78 */	mr r3, r31
/* 800F2C44  38 A0 00 02 */	li r5, 2
/* 800F2C48  3C C0 80 39 */	lis r6, m__23daAlinkHIO_kandelaar_c0@ha
/* 800F2C4C  38 C6 E7 7C */	addi r6, r6, m__23daAlinkHIO_kandelaar_c0@l
/* 800F2C50  38 C6 00 14 */	addi r6, r6, 0x14
/* 800F2C54  4B FB AA 9D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F2C58  7F E3 FB 78 */	mr r3, r31
/* 800F2C5C  48 01 E3 85 */	bl commonKandelaarPourInit__9daAlink_cFv
/* 800F2C60  38 60 00 01 */	li r3, 1
lbl_800F2C64:
/* 800F2C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F2C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F2C6C  7C 08 03 A6 */	mtlr r0
/* 800F2C70  38 21 00 10 */	addi r1, r1, 0x10
/* 800F2C74  4E 80 00 20 */	blr 
