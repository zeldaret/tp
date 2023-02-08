lbl_80C23C1C:
/* 80C23C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23C20  7C 08 02 A6 */	mflr r0
/* 80C23C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23C2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C23C30  7C 7E 1B 78 */	mr r30, r3
/* 80C23C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C23C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23C3C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80C23C40  7C 00 07 74 */	extsb r0, r0
/* 80C23C44  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80C23C48  7C 63 02 14 */	add r3, r3, r0
/* 80C23C4C  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 80C23C50  88 1E 09 4D */	lbz r0, 0x94d(r30)
/* 80C23C54  28 00 00 01 */	cmplwi r0, 1
/* 80C23C58  41 82 00 30 */	beq lbl_80C23C88
/* 80C23C5C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C23C60  4B 53 D8 4D */	bl Start__9dCamera_cFv
/* 80C23C64  38 7F 02 48 */	addi r3, r31, 0x248
/* 80C23C68  38 80 00 00 */	li r4, 0
/* 80C23C6C  4B 53 F3 A1 */	bl SetTrimSize__9dCamera_cFl
/* 80C23C70  38 00 00 00 */	li r0, 0
/* 80C23C74  98 1E 09 4C */	stb r0, 0x94c(r30)
/* 80C23C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C23C7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C23C80  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C23C84  4B 41 E7 E5 */	bl reset__14dEvt_control_cFv
lbl_80C23C88:
/* 80C23C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C23C8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C23C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23C94  7C 08 03 A6 */	mtlr r0
/* 80C23C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C23C9C  4E 80 00 20 */	blr 
