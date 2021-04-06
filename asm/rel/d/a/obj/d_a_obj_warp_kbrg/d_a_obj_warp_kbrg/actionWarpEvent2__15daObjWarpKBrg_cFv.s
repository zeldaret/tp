lbl_80D281E4:
/* 80D281E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D281E8  7C 08 02 A6 */	mflr r0
/* 80D281EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D281F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D281F4  7C 7F 1B 78 */	mr r31, r3
/* 80D281F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D281FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D28200  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D28204  88 1F 05 D8 */	lbz r0, 0x5d8(r31)
/* 80D28208  54 00 08 3C */	slwi r0, r0, 1
/* 80D2820C  7C 9F 02 14 */	add r4, r31, r0
/* 80D28210  A8 84 05 CE */	lha r4, 0x5ce(r4)
/* 80D28214  4B 31 F8 65 */	bl endCheck__16dEvent_manager_cFs
/* 80D28218  2C 03 00 00 */	cmpwi r3, 0
/* 80D2821C  41 82 00 10 */	beq lbl_80D2822C
/* 80D28220  38 00 00 0A */	li r0, 0xa
/* 80D28224  98 1F 05 CA */	stb r0, 0x5ca(r31)
/* 80D28228  48 00 00 0C */	b lbl_80D28234
lbl_80D2822C:
/* 80D2822C  7F E3 FB 78 */	mr r3, r31
/* 80D28230  48 00 00 1D */	bl demoProc__15daObjWarpKBrg_cFv
lbl_80D28234:
/* 80D28234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D28238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2823C  7C 08 03 A6 */	mtlr r0
/* 80D28240  38 21 00 10 */	addi r1, r1, 0x10
/* 80D28244  4E 80 00 20 */	blr 
