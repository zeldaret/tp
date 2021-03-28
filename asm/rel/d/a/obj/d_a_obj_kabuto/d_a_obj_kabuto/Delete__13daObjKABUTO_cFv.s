lbl_80C2D3A4:
/* 80C2D3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2D3A8  7C 08 02 A6 */	mflr r0
/* 80C2D3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2D3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2D3B4  7C 7F 1B 78 */	mr r31, r3
/* 80C2D3B8  38 7F 0A 08 */	addi r3, r31, 0xa08
/* 80C2D3BC  3C 80 80 C3 */	lis r4, stringBase0@ha
/* 80C2D3C0  38 84 E2 18 */	addi r4, r4, stringBase0@l
/* 80C2D3C4  4B 3F FC 44 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C2D3C8  88 1F 0A 10 */	lbz r0, 0xa10(r31)
/* 80C2D3CC  28 00 00 00 */	cmplwi r0, 0
/* 80C2D3D0  41 82 00 10 */	beq lbl_80C2D3E0
/* 80C2D3D4  38 00 00 00 */	li r0, 0
/* 80C2D3D8  3C 60 80 C3 */	lis r3, data_80C2E2F0@ha
/* 80C2D3DC  98 03 E2 F0 */	stb r0, data_80C2E2F0@l(r3)
lbl_80C2D3E0:
/* 80C2D3E0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C2D3E4  28 00 00 00 */	cmplwi r0, 0
/* 80C2D3E8  41 82 00 0C */	beq lbl_80C2D3F4
/* 80C2D3EC  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2D3F0  4B 3E 3F 20 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C2D3F4:
/* 80C2D3F4  38 60 00 01 */	li r3, 1
/* 80C2D3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2D3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2D400  7C 08 03 A6 */	mtlr r0
/* 80C2D404  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2D408  4E 80 00 20 */	blr 
