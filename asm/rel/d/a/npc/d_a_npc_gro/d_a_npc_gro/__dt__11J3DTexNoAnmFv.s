lbl_809DB01C:
/* 809DB01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB020  7C 08 02 A6 */	mflr r0
/* 809DB024  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DB02C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DB030  41 82 00 1C */	beq lbl_809DB04C
/* 809DB034  3C A0 80 9E */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809DF614@ha */
/* 809DB038  38 05 F6 14 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809DF614@l */
/* 809DB03C  90 1F 00 00 */	stw r0, 0(r31)
/* 809DB040  7C 80 07 35 */	extsh. r0, r4
/* 809DB044  40 81 00 08 */	ble lbl_809DB04C
/* 809DB048  4B 8F 3C F5 */	bl __dl__FPv
lbl_809DB04C:
/* 809DB04C  7F E3 FB 78 */	mr r3, r31
/* 809DB050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DB054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB058  7C 08 03 A6 */	mtlr r0
/* 809DB05C  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB060  4E 80 00 20 */	blr 
