lbl_8020CC58:
/* 8020CC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020CC5C  7C 08 02 A6 */	mflr r0
/* 8020CC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020CC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020CC68  93 C1 00 08 */	stw r30, 8(r1)
/* 8020CC6C  7C 7F 1B 78 */	mr r31, r3
/* 8020CC70  54 80 04 63 */	rlwinm. r0, r4, 0, 0x11, 0x11
/* 8020CC74  40 82 00 A4 */	bne lbl_8020CD18
/* 8020CC78  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 8020CC7C  40 82 00 9C */	bne lbl_8020CD18
/* 8020CC80  54 80 02 D7 */	rlwinm. r0, r4, 0, 0xb, 0xb
/* 8020CC84  40 82 00 94 */	bne lbl_8020CD18
/* 8020CC88  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 8020CC8C  40 82 00 8C */	bne lbl_8020CD18
/* 8020CC90  54 80 07 39 */	rlwinm. r0, r4, 0, 0x1c, 0x1c
/* 8020CC94  40 82 00 84 */	bne lbl_8020CD18
/* 8020CC98  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8020CC9C  40 82 00 7C */	bne lbl_8020CD18
/* 8020CCA0  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8020CCA4  40 82 00 74 */	bne lbl_8020CD18
/* 8020CCA8  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 8020CCAC  40 82 00 6C */	bne lbl_8020CD18
/* 8020CCB0  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 8020CCB4  40 82 00 64 */	bne lbl_8020CD18
/* 8020CCB8  54 80 01 CF */	rlwinm. r0, r4, 0, 7, 7
/* 8020CCBC  40 82 00 5C */	bne lbl_8020CD18
/* 8020CCC0  54 80 01 8D */	rlwinm. r0, r4, 0, 6, 6
/* 8020CCC4  41 82 00 54 */	beq lbl_8020CD18
/* 8020CCC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020CCCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020CCD0  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8020CCD4  3C 80 80 3A */	lis r4, d_meter_d_meter_hakusha__stringBase0@ha
/* 8020CCD8  38 84 81 B0 */	addi r4, r4, d_meter_d_meter_hakusha__stringBase0@l
/* 8020CCDC  38 84 00 4E */	addi r4, r4, 0x4e
/* 8020CCE0  48 15 BC B5 */	bl strcmp
/* 8020CCE4  2C 03 00 00 */	cmpwi r3, 0
/* 8020CCE8  40 82 00 14 */	bne lbl_8020CCFC
/* 8020CCEC  38 60 00 00 */	li r3, 0
/* 8020CCF0  4B E1 FC 8D */	bl getLayerNo__14dComIfG_play_cFi
/* 8020CCF4  2C 03 00 04 */	cmpwi r3, 4
/* 8020CCF8  41 82 00 20 */	beq lbl_8020CD18
lbl_8020CCFC:
/* 8020CCFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020CD00  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8020CD04  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 8020CD08  28 00 00 09 */	cmplwi r0, 9
/* 8020CD0C  41 82 00 20 */	beq lbl_8020CD2C
/* 8020CD10  28 00 00 00 */	cmplwi r0, 0
/* 8020CD14  41 82 00 18 */	beq lbl_8020CD2C
lbl_8020CD18:
/* 8020CD18  7F E3 FB 78 */	mr r3, r31
/* 8020CD1C  48 00 05 3D */	bl setAlphaHakushaAnimeMin__15dMeterHakusha_cFv
/* 8020CD20  7F E3 FB 78 */	mr r3, r31
/* 8020CD24  48 00 06 95 */	bl setAlphaButtonAnimeMin__15dMeterHakusha_cFv
/* 8020CD28  48 00 00 2C */	b lbl_8020CD54
lbl_8020CD2C:
/* 8020CD2C  7F E3 FB 78 */	mr r3, r31
/* 8020CD30  48 00 05 D9 */	bl setAlphaHakushaAnimeMax__15dMeterHakusha_cFv
/* 8020CD34  88 1E 5E 24 */	lbz r0, 0x5e24(r30)
/* 8020CD38  28 00 00 09 */	cmplwi r0, 9
/* 8020CD3C  40 82 00 10 */	bne lbl_8020CD4C
/* 8020CD40  7F E3 FB 78 */	mr r3, r31
/* 8020CD44  48 00 06 D9 */	bl setAlphaButtonAnimeMax__15dMeterHakusha_cFv
/* 8020CD48  48 00 00 0C */	b lbl_8020CD54
lbl_8020CD4C:
/* 8020CD4C  7F E3 FB 78 */	mr r3, r31
/* 8020CD50  48 00 06 69 */	bl setAlphaButtonAnimeMin__15dMeterHakusha_cFv
lbl_8020CD54:
/* 8020CD54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020CD58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8020CD5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020CD60  7C 08 03 A6 */	mtlr r0
/* 8020CD64  38 21 00 10 */	addi r1, r1, 0x10
/* 8020CD68  4E 80 00 20 */	blr 
