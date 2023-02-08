lbl_809E4B44:
/* 809E4B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E4B48  7C 08 02 A6 */	mflr r0
/* 809E4B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E4B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E4B54  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E4B58  41 82 00 1C */	beq lbl_809E4B74
/* 809E4B5C  3C A0 80 9F */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809E814C@ha */
/* 809E4B60  38 05 81 4C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809E814C@l */
/* 809E4B64  90 1F 00 00 */	stw r0, 0(r31)
/* 809E4B68  7C 80 07 35 */	extsh. r0, r4
/* 809E4B6C  40 81 00 08 */	ble lbl_809E4B74
/* 809E4B70  4B 8E A1 CD */	bl __dl__FPv
lbl_809E4B74:
/* 809E4B74  7F E3 FB 78 */	mr r3, r31
/* 809E4B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E4B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E4B80  7C 08 03 A6 */	mtlr r0
/* 809E4B84  38 21 00 10 */	addi r1, r1, 0x10
/* 809E4B88  4E 80 00 20 */	blr 
