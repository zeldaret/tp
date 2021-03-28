lbl_8002AD3C:
/* 8002AD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002AD40  7C 08 02 A6 */	mflr r0
/* 8002AD44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002AD48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002AD4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8002AD50  41 82 00 1C */	beq lbl_8002AD6C
/* 8002AD54  3C A0 80 3A */	lis r5, __vt__11dDrawPath_c@ha
/* 8002AD58  38 05 7C F8 */	addi r0, r5, __vt__11dDrawPath_c@l
/* 8002AD5C  90 1F 00 00 */	stw r0, 0(r31)
/* 8002AD60  7C 80 07 35 */	extsh. r0, r4
/* 8002AD64  40 81 00 08 */	ble lbl_8002AD6C
/* 8002AD68  48 2A 3F D5 */	bl __dl__FPv
lbl_8002AD6C:
/* 8002AD6C  7F E3 FB 78 */	mr r3, r31
/* 8002AD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002AD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002AD78  7C 08 03 A6 */	mtlr r0
/* 8002AD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002AD80  4E 80 00 20 */	blr 
