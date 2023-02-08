lbl_80D3202C:
/* 80D3202C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D32030  7C 08 02 A6 */	mflr r0
/* 80D32034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D32038  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3203C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D32040  41 82 00 30 */	beq lbl_80D32070
/* 80D32044  3C 60 80 D3 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D34398@ha */
/* 80D32048  38 03 43 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D34398@l */
/* 80D3204C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D32050  41 82 00 10 */	beq lbl_80D32060
/* 80D32054  3C 60 80 D3 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D3438C@ha */
/* 80D32058  38 03 43 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D3438C@l */
/* 80D3205C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D32060:
/* 80D32060  7C 80 07 35 */	extsh. r0, r4
/* 80D32064  40 81 00 0C */	ble lbl_80D32070
/* 80D32068  7F E3 FB 78 */	mr r3, r31
/* 80D3206C  4B 59 CC D1 */	bl __dl__FPv
lbl_80D32070:
/* 80D32070  7F E3 FB 78 */	mr r3, r31
/* 80D32074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D32078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3207C  7C 08 03 A6 */	mtlr r0
/* 80D32080  38 21 00 10 */	addi r1, r1, 0x10
/* 80D32084  4E 80 00 20 */	blr 
