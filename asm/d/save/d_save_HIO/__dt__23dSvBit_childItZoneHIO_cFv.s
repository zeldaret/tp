lbl_8025C404:
/* 8025C404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C408  7C 08 02 A6 */	mflr r0
/* 8025C40C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C414  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C418  41 82 00 1C */	beq lbl_8025C434
/* 8025C41C  3C A0 80 3C */	lis r5, __vt__23dSvBit_childItZoneHIO_c@ha /* 0x803C333C@ha */
/* 8025C420  38 05 33 3C */	addi r0, r5, __vt__23dSvBit_childItZoneHIO_c@l /* 0x803C333C@l */
/* 8025C424  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C428  7C 80 07 35 */	extsh. r0, r4
/* 8025C42C  40 81 00 08 */	ble lbl_8025C434
/* 8025C430  48 07 29 0D */	bl __dl__FPv
lbl_8025C434:
/* 8025C434  7F E3 FB 78 */	mr r3, r31
/* 8025C438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C43C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C440  7C 08 03 A6 */	mtlr r0
/* 8025C444  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C448  4E 80 00 20 */	blr 
