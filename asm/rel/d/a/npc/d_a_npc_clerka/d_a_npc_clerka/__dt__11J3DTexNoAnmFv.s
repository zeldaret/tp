lbl_80992C3C:
/* 80992C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992C40  7C 08 02 A6 */	mflr r0
/* 80992C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80992C4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80992C50  41 82 00 1C */	beq lbl_80992C6C
/* 80992C54  3C A0 80 99 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80995CA0@ha */
/* 80992C58  38 05 5C A0 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80995CA0@l */
/* 80992C5C  90 1F 00 00 */	stw r0, 0(r31)
/* 80992C60  7C 80 07 35 */	extsh. r0, r4
/* 80992C64  40 81 00 08 */	ble lbl_80992C6C
/* 80992C68  4B 93 C0 D5 */	bl __dl__FPv
lbl_80992C6C:
/* 80992C6C  7F E3 FB 78 */	mr r3, r31
/* 80992C70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80992C74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992C78  7C 08 03 A6 */	mtlr r0
/* 80992C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80992C80  4E 80 00 20 */	blr 
