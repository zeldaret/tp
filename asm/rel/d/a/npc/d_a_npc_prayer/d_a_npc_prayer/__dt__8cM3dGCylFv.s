lbl_80AB2F70:
/* 80AB2F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2F74  7C 08 02 A6 */	mflr r0
/* 80AB2F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB2F80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB2F84  41 82 00 1C */	beq lbl_80AB2FA0
/* 80AB2F88  3C A0 80 AB */	lis r5, __vt__8cM3dGCyl@ha
/* 80AB2F8C  38 05 5B 70 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80AB2F90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AB2F94  7C 80 07 35 */	extsh. r0, r4
/* 80AB2F98  40 81 00 08 */	ble lbl_80AB2FA0
/* 80AB2F9C  4B 81 BD A0 */	b __dl__FPv
lbl_80AB2FA0:
/* 80AB2FA0  7F E3 FB 78 */	mr r3, r31
/* 80AB2FA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB2FA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2FAC  7C 08 03 A6 */	mtlr r0
/* 80AB2FB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2FB4  4E 80 00 20 */	blr 
