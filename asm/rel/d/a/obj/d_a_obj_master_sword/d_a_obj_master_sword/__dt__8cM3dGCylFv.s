lbl_80C912EC:
/* 80C912EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C912F0  7C 08 02 A6 */	mflr r0
/* 80C912F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C912F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C912FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C91300  41 82 00 1C */	beq lbl_80C9131C
/* 80C91304  3C A0 80 C9 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C91AAC@ha */
/* 80C91308  38 05 1A AC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C91AAC@l */
/* 80C9130C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C91310  7C 80 07 35 */	extsh. r0, r4
/* 80C91314  40 81 00 08 */	ble lbl_80C9131C
/* 80C91318  4B 63 DA 25 */	bl __dl__FPv
lbl_80C9131C:
/* 80C9131C  7F E3 FB 78 */	mr r3, r31
/* 80C91320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C91324  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C91328  7C 08 03 A6 */	mtlr r0
/* 80C9132C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C91330  4E 80 00 20 */	blr 
