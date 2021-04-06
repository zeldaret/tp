lbl_8045E000:
/* 8045E000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E004  7C 08 02 A6 */	mflr r0
/* 8045E008  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045E010  7C 7F 1B 78 */	mr r31, r3
/* 8045E014  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8045E018  28 00 00 02 */	cmplwi r0, 2
/* 8045E01C  40 82 00 40 */	bne lbl_8045E05C
/* 8045E020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045E024  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045E028  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8045E02C  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045E030  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045E034  38 84 00 D1 */	addi r4, r4, 0xd1
/* 8045E038  38 A0 00 00 */	li r5, 0
/* 8045E03C  38 C0 00 00 */	li r6, 0
/* 8045E040  4B BE 9A DD */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 8045E044  90 7F 05 98 */	stw r3, 0x598(r31)
/* 8045E048  7F E3 FB 78 */	mr r3, r31
/* 8045E04C  4B FF FA 65 */	bl demoProc__12daDbDoor00_cFv
/* 8045E050  38 00 00 03 */	li r0, 3
/* 8045E054  98 1F 05 86 */	stb r0, 0x586(r31)
/* 8045E058  48 00 00 24 */	b lbl_8045E07C
lbl_8045E05C:
/* 8045E05C  3C 80 80 46 */	lis r4, d_a_door_dbdoor00__stringBase0@ha /* 0x8045E56C@ha */
/* 8045E060  38 84 E5 6C */	addi r4, r4, d_a_door_dbdoor00__stringBase0@l /* 0x8045E56C@l */
/* 8045E064  38 84 00 BE */	addi r4, r4, 0xbe
/* 8045E068  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8045E06C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8045E070  38 C0 00 01 */	li r6, 1
/* 8045E074  38 E0 00 00 */	li r7, 0
/* 8045E078  4B BB D3 55 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
lbl_8045E07C:
/* 8045E07C  38 60 00 01 */	li r3, 1
/* 8045E080  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045E084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E088  7C 08 03 A6 */	mtlr r0
/* 8045E08C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E090  4E 80 00 20 */	blr 
