lbl_80352C58:
/* 80352C58  7C 08 02 A6 */	mflr r0
/* 80352C5C  90 01 00 04 */	stw r0, 4(r1)
/* 80352C60  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80352C64  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 80352C68  3B 63 00 00 */	addi r27, r3, 0
/* 80352C6C  3C 60 80 45 */	lis r3, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80352C70  38 03 CB C0 */	addi r0, r3, __CARDBlock@l /* 0x8044CBC0@l */
/* 80352C74  1C 9B 01 10 */	mulli r4, r27, 0x110
/* 80352C78  38 7B 00 00 */	addi r3, r27, 0
/* 80352C7C  7F A0 22 14 */	add r29, r0, r4
/* 80352C80  4B FF 0D 15 */	bl EXIDeselect
/* 80352C84  7C 60 00 34 */	cntlzw r0, r3
/* 80352C88  38 7B 00 00 */	addi r3, r27, 0
/* 80352C8C  54 1F D9 7E */	srwi r31, r0, 5
/* 80352C90  4B FF 14 8D */	bl EXIUnlock
/* 80352C94  80 1D 00 C8 */	lwz r0, 0xc8(r29)
/* 80352C98  28 00 00 00 */	cmplwi r0, 0
/* 80352C9C  7C 1C 03 78 */	mr r28, r0
/* 80352CA0  41 82 00 4C */	beq lbl_80352CEC
/* 80352CA4  3B C0 00 00 */	li r30, 0
/* 80352CA8  2C 1F 00 00 */	cmpwi r31, 0
/* 80352CAC  93 DD 00 C8 */	stw r30, 0xc8(r29)
/* 80352CB0  40 82 00 18 */	bne lbl_80352CC8
/* 80352CB4  7F 63 DB 78 */	mr r3, r27
/* 80352CB8  4B FF 08 B5 */	bl EXIProbe
/* 80352CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80352CC0  41 82 00 08 */	beq lbl_80352CC8
/* 80352CC4  3B C0 00 01 */	li r30, 1
lbl_80352CC8:
/* 80352CC8  2C 1E 00 00 */	cmpwi r30, 0
/* 80352CCC  41 82 00 0C */	beq lbl_80352CD8
/* 80352CD0  38 80 00 00 */	li r4, 0
/* 80352CD4  48 00 00 08 */	b lbl_80352CDC
lbl_80352CD8:
/* 80352CD8  38 80 FF FD */	li r4, -3
lbl_80352CDC:
/* 80352CDC  39 9C 00 00 */	addi r12, r28, 0
/* 80352CE0  7D 88 03 A6 */	mtlr r12
/* 80352CE4  38 7B 00 00 */	addi r3, r27, 0
/* 80352CE8  4E 80 00 21 */	blrl 
lbl_80352CEC:
/* 80352CEC  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80352CF0  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80352CF4  38 21 00 28 */	addi r1, r1, 0x28
/* 80352CF8  7C 08 03 A6 */	mtlr r0
/* 80352CFC  4E 80 00 20 */	blr 
