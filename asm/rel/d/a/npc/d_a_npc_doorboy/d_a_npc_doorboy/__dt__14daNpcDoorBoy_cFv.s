lbl_809AAEA0:
/* 809AAEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AAEA4  7C 08 02 A6 */	mflr r0
/* 809AAEA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AAEAC  39 61 00 20 */	addi r11, r1, 0x20
/* 809AAEB0  4B 9B 73 20 */	b _savegpr_26
/* 809AAEB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AAEB8  7C 9F 23 78 */	mr r31, r4
/* 809AAEBC  41 82 01 B0 */	beq lbl_809AB06C
/* 809AAEC0  3C 60 80 9B */	lis r3, __vt__14daNpcDoorBoy_c@ha
/* 809AAEC4  38 03 DC 74 */	addi r0, r3, __vt__14daNpcDoorBoy_c@l
/* 809AAEC8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809AAECC  3B 40 00 00 */	li r26, 0
/* 809AAED0  3B A0 00 00 */	li r29, 0
/* 809AAED4  3B 80 00 00 */	li r28, 0
/* 809AAED8  3C 60 80 9B */	lis r3, l_arcNames@ha
/* 809AAEDC  3B 63 DB 9C */	addi r27, r3, l_arcNames@l
lbl_809AAEE0:
/* 809AAEE0  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 809AAEE4  7C 7E 1A 14 */	add r3, r30, r3
/* 809AAEE8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 809AAEEC  4B 68 21 1C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809AAEF0  3B 5A 00 01 */	addi r26, r26, 1
/* 809AAEF4  2C 1A 00 02 */	cmpwi r26, 2
/* 809AAEF8  3B BD 00 04 */	addi r29, r29, 4
/* 809AAEFC  3B 9C 00 08 */	addi r28, r28, 8
/* 809AAF00  41 80 FF E0 */	blt lbl_809AAEE0
/* 809AAF04  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809AAF08  28 00 00 00 */	cmplwi r0, 0
/* 809AAF0C  41 82 00 0C */	beq lbl_809AAF18
/* 809AAF10  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AAF14  4B 66 63 FC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809AAF18:
/* 809AAF18  34 1E 0C 98 */	addic. r0, r30, 0xc98
/* 809AAF1C  41 82 00 84 */	beq lbl_809AAFA0
/* 809AAF20  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809AAF24  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809AAF28  90 7E 0C D4 */	stw r3, 0xcd4(r30)
/* 809AAF2C  38 03 00 2C */	addi r0, r3, 0x2c
/* 809AAF30  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809AAF34  38 03 00 84 */	addi r0, r3, 0x84
/* 809AAF38  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809AAF3C  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809AAF40  41 82 00 54 */	beq lbl_809AAF94
/* 809AAF44  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809AAF48  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809AAF4C  90 7E 0D B8 */	stw r3, 0xdb8(r30)
/* 809AAF50  38 03 00 58 */	addi r0, r3, 0x58
/* 809AAF54  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809AAF58  34 1E 0D BC */	addic. r0, r30, 0xdbc
/* 809AAF5C  41 82 00 10 */	beq lbl_809AAF6C
/* 809AAF60  3C 60 80 9B */	lis r3, __vt__8cM3dGCyl@ha
/* 809AAF64  38 03 DD 1C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809AAF68  90 1E 0D D0 */	stw r0, 0xdd0(r30)
lbl_809AAF6C:
/* 809AAF6C  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809AAF70  41 82 00 24 */	beq lbl_809AAF94
/* 809AAF74  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809AAF78  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809AAF7C  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809AAF80  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809AAF84  41 82 00 10 */	beq lbl_809AAF94
/* 809AAF88  3C 60 80 9B */	lis r3, __vt__8cM3dGAab@ha
/* 809AAF8C  38 03 DD 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809AAF90  90 1E 0D B4 */	stw r0, 0xdb4(r30)
lbl_809AAF94:
/* 809AAF94  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809AAF98  38 80 00 00 */	li r4, 0
/* 809AAF9C  4B 6D 91 48 */	b __dt__12dCcD_GObjInfFv
lbl_809AAFA0:
/* 809AAFA0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809AAFA4  3C 80 80 9B */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809AAFA8  38 84 D0 D0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809AAFAC  38 A0 00 08 */	li r5, 8
/* 809AAFB0  38 C0 00 01 */	li r6, 1
/* 809AAFB4  4B 9B 6D 34 */	b __destroy_arr
/* 809AAFB8  34 1E 0B F0 */	addic. r0, r30, 0xbf0
/* 809AAFBC  41 82 00 88 */	beq lbl_809AB044
/* 809AAFC0  3C 60 80 9B */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809AAFC4  38 03 DD 34 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809AAFC8  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 809AAFCC  38 7E 0C 6C */	addi r3, r30, 0xc6c
/* 809AAFD0  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AAFD4  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AAFD8  38 A0 00 06 */	li r5, 6
/* 809AAFDC  38 C0 00 04 */	li r6, 4
/* 809AAFE0  4B 9B 6D 08 */	b __destroy_arr
/* 809AAFE4  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 809AAFE8  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AAFEC  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AAFF0  38 A0 00 06 */	li r5, 6
/* 809AAFF4  38 C0 00 04 */	li r6, 4
/* 809AAFF8  4B 9B 6C F0 */	b __destroy_arr
/* 809AAFFC  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 809AB000  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AB004  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AB008  38 A0 00 06 */	li r5, 6
/* 809AB00C  38 C0 00 04 */	li r6, 4
/* 809AB010  4B 9B 6C D8 */	b __destroy_arr
/* 809AB014  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 809AB018  3C 80 80 9B */	lis r4, __dt__5csXyzFv@ha
/* 809AB01C  38 84 D2 24 */	addi r4, r4, __dt__5csXyzFv@l
/* 809AB020  38 A0 00 06 */	li r5, 6
/* 809AB024  38 C0 00 04 */	li r6, 4
/* 809AB028  4B 9B 6C C0 */	b __destroy_arr
/* 809AB02C  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 809AB030  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809AB034  38 84 D2 64 */	addi r4, r4, __dt__4cXyzFv@l
/* 809AB038  38 A0 00 0C */	li r5, 0xc
/* 809AB03C  38 C0 00 04 */	li r6, 4
/* 809AB040  4B 9B 6C A8 */	b __destroy_arr
lbl_809AB044:
/* 809AB044  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809AB048  38 80 FF FF */	li r4, -1
/* 809AB04C  4B 91 5C 20 */	b __dt__17Z2CreatureCitizenFv
/* 809AB050  7F C3 F3 78 */	mr r3, r30
/* 809AB054  38 80 00 00 */	li r4, 0
/* 809AB058  48 00 22 4D */	bl __dt__8daNpcF_cFv
/* 809AB05C  7F E0 07 35 */	extsh. r0, r31
/* 809AB060  40 81 00 0C */	ble lbl_809AB06C
/* 809AB064  7F C3 F3 78 */	mr r3, r30
/* 809AB068  4B 92 3C D4 */	b __dl__FPv
lbl_809AB06C:
/* 809AB06C  7F C3 F3 78 */	mr r3, r30
/* 809AB070  39 61 00 20 */	addi r11, r1, 0x20
/* 809AB074  4B 9B 71 A8 */	b _restgpr_26
/* 809AB078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AB07C  7C 08 03 A6 */	mtlr r0
/* 809AB080  38 21 00 20 */	addi r1, r1, 0x20
/* 809AB084  4E 80 00 20 */	blr 
