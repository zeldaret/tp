lbl_804E12C8:
/* 804E12C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E12CC  7C 08 02 A6 */	mflr r0
/* 804E12D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E12D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E12D8  7C 7F 1B 78 */	mr r31, r3
/* 804E12DC  88 63 09 3D */	lbz r3, 0x93d(r3)
/* 804E12E0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 804E12E4  40 82 00 20 */	bne lbl_804E1304
/* 804E12E8  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 804E12EC  40 82 00 18 */	bne lbl_804E1304
/* 804E12F0  88 1F 09 3F */	lbz r0, 0x93f(r31)
/* 804E12F4  28 00 00 00 */	cmplwi r0, 0
/* 804E12F8  41 82 00 0C */	beq lbl_804E1304
/* 804E12FC  38 7F 09 48 */	addi r3, r31, 0x948
/* 804E1300  4B CC 67 01 */	bl dKy_efplight_cut__FP15LIGHT_INFLUENCE
lbl_804E1304:
/* 804E1304  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804E1308  28 00 00 22 */	cmplwi r0, 0x22
/* 804E130C  41 82 00 0C */	beq lbl_804E1318
/* 804E1310  28 00 00 21 */	cmplwi r0, 0x21
/* 804E1314  40 82 00 2C */	bne lbl_804E1340
lbl_804E1318:
/* 804E1318  38 7F 09 6C */	addi r3, r31, 0x96c
/* 804E131C  81 9F 09 6C */	lwz r12, 0x96c(r31)
/* 804E1320  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804E1324  7D 89 03 A6 */	mtctr r12
/* 804E1328  4E 80 04 21 */	bctrl 
/* 804E132C  38 7F 09 80 */	addi r3, r31, 0x980
/* 804E1330  81 9F 09 80 */	lwz r12, 0x980(r31)
/* 804E1334  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804E1338  7D 89 03 A6 */	mtctr r12
/* 804E133C  4E 80 04 21 */	bctrl 
lbl_804E1340:
/* 804E1340  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804E1344  28 00 00 06 */	cmplwi r0, 6
/* 804E1348  41 82 00 2C */	beq lbl_804E1374
/* 804E134C  28 00 00 07 */	cmplwi r0, 7
/* 804E1350  41 82 00 24 */	beq lbl_804E1374
/* 804E1354  28 00 00 36 */	cmplwi r0, 0x36
/* 804E1358  41 82 00 1C */	beq lbl_804E1374
/* 804E135C  28 00 00 73 */	cmplwi r0, 0x73
/* 804E1360  41 82 00 14 */	beq lbl_804E1374
/* 804E1364  28 00 00 75 */	cmplwi r0, 0x75
/* 804E1368  41 82 00 0C */	beq lbl_804E1374
/* 804E136C  28 00 00 77 */	cmplwi r0, 0x77
/* 804E1370  40 82 00 18 */	bne lbl_804E1388
lbl_804E1374:
/* 804E1374  38 7F 09 6C */	addi r3, r31, 0x96c
/* 804E1378  81 9F 09 6C */	lwz r12, 0x96c(r31)
/* 804E137C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 804E1380  7D 89 03 A6 */	mtctr r12
/* 804E1384  4E 80 04 21 */	bctrl 
lbl_804E1388:
/* 804E1388  7F E3 FB 78 */	mr r3, r31
/* 804E138C  4B FF F9 25 */	bl endInsectEffect__9daDitem_cFv
/* 804E1390  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 804E1394  4B DD CC 65 */	bl deleteObject__14Z2SoundObjBaseFv
/* 804E1398  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 804E139C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 804E13A0  3C 60 80 3B */	lis r3, item_resource__10dItem_data@ha /* 0x803AC5A0@ha */
/* 804E13A4  38 63 C5 A0 */	addi r3, r3, item_resource__10dItem_data@l /* 0x803AC5A0@l */
/* 804E13A8  7C 83 00 2E */	lwzx r4, r3, r0
/* 804E13AC  7F E3 FB 78 */	mr r3, r31
/* 804E13B0  4B C6 33 75 */	bl DeleteBase__12daItemBase_cFPCc
/* 804E13B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E13B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E13BC  7C 08 03 A6 */	mtlr r0
/* 804E13C0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E13C4  4E 80 00 20 */	blr 
