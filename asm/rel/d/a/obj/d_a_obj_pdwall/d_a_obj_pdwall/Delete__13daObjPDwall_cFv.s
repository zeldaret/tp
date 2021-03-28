lbl_80CACFD4:
/* 80CACFD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CACFD8  7C 08 02 A6 */	mflr r0
/* 80CACFDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CACFE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CACFE4  4B 6B 51 F0 */	b _savegpr_27
/* 80CACFE8  7C 7B 1B 78 */	mr r27, r3
/* 80CACFEC  3B 80 00 00 */	li r28, 0
/* 80CACFF0  3B E0 00 00 */	li r31, 0
/* 80CACFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CACFF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CACFFC  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_80CAD000:
/* 80CAD000  3B BF 08 3C */	addi r29, r31, 0x83c
/* 80CAD004  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80CAD008  28 03 00 00 */	cmplwi r3, 0
/* 80CAD00C  41 82 00 1C */	beq lbl_80CAD028
/* 80CAD010  4B 5B B1 C4 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CAD014  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CAD018  41 82 00 10 */	beq lbl_80CAD028
/* 80CAD01C  7F C3 F3 78 */	mr r3, r30
/* 80CAD020  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80CAD024  4B 3C 72 2C */	b Release__4cBgSFP9dBgW_Base
lbl_80CAD028:
/* 80CAD028  3B 9C 00 01 */	addi r28, r28, 1
/* 80CAD02C  2C 1C 00 09 */	cmpwi r28, 9
/* 80CAD030  3B FF 00 04 */	addi r31, r31, 4
/* 80CAD034  41 80 FF CC */	blt lbl_80CAD000
/* 80CAD038  7F 63 DB 78 */	mr r3, r27
/* 80CAD03C  28 1B 00 00 */	cmplwi r27, 0
/* 80CAD040  41 82 00 08 */	beq lbl_80CAD048
/* 80CAD044  38 7B 05 A0 */	addi r3, r27, 0x5a0
lbl_80CAD048:
/* 80CAD048  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAD04C  38 84 D1 FC */	addi r4, r4, l_arcName@l
/* 80CAD050  80 84 00 00 */	lwz r4, 0(r4)
/* 80CAD054  4B 37 FF B4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CAD058  38 60 00 01 */	li r3, 1
/* 80CAD05C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CAD060  4B 6B 51 C0 */	b _restgpr_27
/* 80CAD064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAD068  7C 08 03 A6 */	mtlr r0
/* 80CAD06C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAD070  4E 80 00 20 */	blr 
