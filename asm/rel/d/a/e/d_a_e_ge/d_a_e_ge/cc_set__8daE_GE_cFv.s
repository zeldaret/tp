lbl_806CBEF0:
/* 806CBEF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CBEF4  7C 08 02 A6 */	mflr r0
/* 806CBEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CBEFC  39 61 00 20 */	addi r11, r1, 0x20
/* 806CBF00  4B C9 62 DC */	b _savegpr_29
/* 806CBF04  7C 7F 1B 78 */	mr r31, r3
/* 806CBF08  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806CBF0C  3B C3 D0 00 */	addi r30, r3, lit_3904@l
/* 806CBF10  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806CBF14  80 63 00 04 */	lwz r3, 4(r3)
/* 806CBF18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806CBF1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806CBF20  38 63 00 60 */	addi r3, r3, 0x60
/* 806CBF24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CBF28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CBF2C  4B C7 A5 84 */	b PSMTXCopy
/* 806CBF30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CBF34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CBF38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806CBF3C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 806CBF40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806CBF44  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 806CBF48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806CBF4C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 806CBF50  88 1F 0B 9A */	lbz r0, 0xb9a(r31)
/* 806CBF54  28 00 00 02 */	cmplwi r0, 2
/* 806CBF58  40 82 00 80 */	bne lbl_806CBFD8
/* 806CBF5C  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 806CBF60  38 9F 05 38 */	addi r4, r31, 0x538
/* 806CBF64  4B BA 36 E4 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CBF68  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 806CBF6C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806CBF70  4B BA 37 98 */	b SetR__8cM3dGSphFf
/* 806CBF74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CBF78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CBF7C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806CBF80  7F A3 EB 78 */	mr r3, r29
/* 806CBF84  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 806CBF88  4B B9 8C 20 */	b Set__4cCcSFP8cCcD_Obj
/* 806CBF8C  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CBF90  38 9F 05 38 */	addi r4, r31, 0x538
/* 806CBF94  4B BA 36 B4 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CBF98  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 806CBF9C  2C 00 00 00 */	cmpwi r0, 0
/* 806CBFA0  41 82 00 0C */	beq lbl_806CBFAC
/* 806CBFA4  2C 00 00 06 */	cmpwi r0, 6
/* 806CBFA8  40 82 00 14 */	bne lbl_806CBFBC
lbl_806CBFAC:
/* 806CBFAC  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CBFB0  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806CBFB4  4B BA 37 54 */	b SetR__8cM3dGSphFf
/* 806CBFB8  48 00 00 10 */	b lbl_806CBFC8
lbl_806CBFBC:
/* 806CBFBC  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CBFC0  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 806CBFC4  4B BA 37 44 */	b SetR__8cM3dGSphFf
lbl_806CBFC8:
/* 806CBFC8  7F A3 EB 78 */	mr r3, r29
/* 806CBFCC  38 9F 09 E8 */	addi r4, r31, 0x9e8
/* 806CBFD0  4B B9 8B D8 */	b Set__4cCcSFP8cCcD_Obj
/* 806CBFD4  48 00 00 7C */	b lbl_806CC050
lbl_806CBFD8:
/* 806CBFD8  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 806CBFDC  38 9F 05 38 */	addi r4, r31, 0x538
/* 806CBFE0  4B BA 36 68 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CBFE4  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 806CBFE8  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 806CBFEC  4B BA 37 1C */	b SetR__8cM3dGSphFf
/* 806CBFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CBFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CBFF8  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806CBFFC  7F A3 EB 78 */	mr r3, r29
/* 806CC000  38 9F 08 B0 */	addi r4, r31, 0x8b0
/* 806CC004  4B B9 8B A4 */	b Set__4cCcSFP8cCcD_Obj
/* 806CC008  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CC00C  38 9F 05 38 */	addi r4, r31, 0x538
/* 806CC010  4B BA 36 38 */	b SetC__8cM3dGSphFRC4cXyz
/* 806CC014  80 1F 0B 70 */	lwz r0, 0xb70(r31)
/* 806CC018  2C 00 00 00 */	cmpwi r0, 0
/* 806CC01C  41 82 00 0C */	beq lbl_806CC028
/* 806CC020  2C 00 00 06 */	cmpwi r0, 6
/* 806CC024  40 82 00 14 */	bne lbl_806CC038
lbl_806CC028:
/* 806CC028  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CC02C  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 806CC030  4B BA 36 D8 */	b SetR__8cM3dGSphFf
/* 806CC034  48 00 00 10 */	b lbl_806CC044
lbl_806CC038:
/* 806CC038  38 7F 0B 0C */	addi r3, r31, 0xb0c
/* 806CC03C  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 806CC040  4B BA 36 C8 */	b SetR__8cM3dGSphFf
lbl_806CC044:
/* 806CC044  7F A3 EB 78 */	mr r3, r29
/* 806CC048  38 9F 09 E8 */	addi r4, r31, 0x9e8
/* 806CC04C  4B B9 8B 5C */	b Set__4cCcSFP8cCcD_Obj
lbl_806CC050:
/* 806CC050  39 61 00 20 */	addi r11, r1, 0x20
/* 806CC054  4B C9 61 D4 */	b _restgpr_29
/* 806CC058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CC05C  7C 08 03 A6 */	mtlr r0
/* 806CC060  38 21 00 20 */	addi r1, r1, 0x20
/* 806CC064  4E 80 00 20 */	blr 
