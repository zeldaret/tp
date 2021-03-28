lbl_8013BD54:
/* 8013BD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013BD58  7C 08 02 A6 */	mflr r0
/* 8013BD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013BD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013BD64  93 C1 00 08 */	stw r30, 8(r1)
/* 8013BD68  7C 7E 1B 78 */	mr r30, r3
/* 8013BD6C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8013BD70  4B FE DD 11 */	bl checkWolfGroundSpecialMode__9daAlink_cFv
/* 8013BD74  2C 03 00 00 */	cmpwi r3, 0
/* 8013BD78  41 82 00 0C */	beq lbl_8013BD84
/* 8013BD7C  38 60 00 01 */	li r3, 1
/* 8013BD80  48 00 00 8C */	b lbl_8013BE0C
lbl_8013BD84:
/* 8013BD84  38 00 00 04 */	li r0, 4
/* 8013BD88  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013BD8C  7F E3 FB 78 */	mr r3, r31
/* 8013BD90  48 02 27 3D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013BD94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013BD98  41 82 00 14 */	beq lbl_8013BDAC
/* 8013BD9C  7F C3 F3 78 */	mr r3, r30
/* 8013BDA0  38 80 00 00 */	li r4, 0
/* 8013BDA4  4B FE DD A1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013BDA8  48 00 00 60 */	b lbl_8013BE08
lbl_8013BDAC:
/* 8013BDAC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8013BDB0  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlAtDown_c0@ha
/* 8013BDB4  38 63 F6 58 */	addi r3, r3, m__22daAlinkHIO_wlAtDown_c0@l
/* 8013BDB8  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 8013BDBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BDC0  40 81 00 14 */	ble lbl_8013BDD4
/* 8013BDC4  7F C3 F3 78 */	mr r3, r30
/* 8013BDC8  38 80 00 01 */	li r4, 1
/* 8013BDCC  4B FE DD 79 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013BDD0  48 00 00 38 */	b lbl_8013BE08
lbl_8013BDD4:
/* 8013BDD4  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 8013BDD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BDDC  4C 41 13 82 */	cror 2, 1, 2
/* 8013BDE0  40 82 00 28 */	bne lbl_8013BE08
/* 8013BDE4  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 8013BDE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013BDEC  40 80 00 1C */	bge lbl_8013BE08
/* 8013BDF0  7F C3 F3 78 */	mr r3, r30
/* 8013BDF4  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030018@ha */
/* 8013BDF8  38 84 00 18 */	addi r4, r4, 0x0018 /* 0x00030018@l */
/* 8013BDFC  4B F8 33 D1 */	bl seStartMapInfoLevel__9daAlink_cFUl
/* 8013BE00  38 00 00 18 */	li r0, 0x18
/* 8013BE04  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
lbl_8013BE08:
/* 8013BE08  38 60 00 01 */	li r3, 1
lbl_8013BE0C:
/* 8013BE0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013BE10  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013BE14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013BE18  7C 08 03 A6 */	mtlr r0
/* 8013BE1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8013BE20  4E 80 00 20 */	blr 
