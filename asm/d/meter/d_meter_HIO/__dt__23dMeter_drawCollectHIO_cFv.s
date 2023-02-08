lbl_80200FE0:
/* 80200FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200FE4  7C 08 02 A6 */	mflr r0
/* 80200FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200FF4  41 82 00 1C */	beq lbl_80201010
/* 80200FF8  3C A0 80 3C */	lis r5, __vt__23dMeter_drawCollectHIO_c@ha /* 0x803BF190@ha */
/* 80200FFC  38 05 F1 90 */	addi r0, r5, __vt__23dMeter_drawCollectHIO_c@l /* 0x803BF190@l */
/* 80201000  90 1F 00 00 */	stw r0, 0(r31)
/* 80201004  7C 80 07 35 */	extsh. r0, r4
/* 80201008  40 81 00 08 */	ble lbl_80201010
/* 8020100C  48 0C DD 31 */	bl __dl__FPv
lbl_80201010:
/* 80201010  7F E3 FB 78 */	mr r3, r31
/* 80201014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80201018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020101C  7C 08 03 A6 */	mtlr r0
/* 80201020  38 21 00 10 */	addi r1, r1, 0x10
/* 80201024  4E 80 00 20 */	blr 
