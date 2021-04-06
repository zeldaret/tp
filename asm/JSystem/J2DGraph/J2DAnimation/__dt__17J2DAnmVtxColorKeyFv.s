lbl_8030CC20:
/* 8030CC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030CC24  7C 08 02 A6 */	mflr r0
/* 8030CC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030CC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030CC30  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030CC34  41 82 00 40 */	beq lbl_8030CC74
/* 8030CC38  3C 60 80 3D */	lis r3, __vt__17J2DAnmVtxColorKey@ha /* 0x803CD758@ha */
/* 8030CC3C  38 03 D7 58 */	addi r0, r3, __vt__17J2DAnmVtxColorKey@l /* 0x803CD758@l */
/* 8030CC40  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CC44  41 82 00 20 */	beq lbl_8030CC64
/* 8030CC48  3C 60 80 3D */	lis r3, __vt__14J2DAnmVtxColor@ha /* 0x803CD714@ha */
/* 8030CC4C  38 03 D7 14 */	addi r0, r3, __vt__14J2DAnmVtxColor@l /* 0x803CD714@l */
/* 8030CC50  90 1F 00 00 */	stw r0, 0(r31)
/* 8030CC54  41 82 00 10 */	beq lbl_8030CC64
/* 8030CC58  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 8030CC5C  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 8030CC60  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030CC64:
/* 8030CC64  7C 80 07 35 */	extsh. r0, r4
/* 8030CC68  40 81 00 0C */	ble lbl_8030CC74
/* 8030CC6C  7F E3 FB 78 */	mr r3, r31
/* 8030CC70  4B FC 20 CD */	bl __dl__FPv
lbl_8030CC74:
/* 8030CC74  7F E3 FB 78 */	mr r3, r31
/* 8030CC78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030CC7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030CC80  7C 08 03 A6 */	mtlr r0
/* 8030CC84  38 21 00 10 */	addi r1, r1, 0x10
/* 8030CC88  4E 80 00 20 */	blr 
