lbl_809CFF40:
/* 809CFF40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CFF44  7C 08 02 A6 */	mflr r0
/* 809CFF48  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CFF4C  39 61 00 20 */	addi r11, r1, 0x20
/* 809CFF50  4B 99 22 80 */	b _savegpr_26
/* 809CFF54  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CFF58  7C 9F 23 78 */	mr r31, r4
/* 809CFF5C  41 82 01 C8 */	beq lbl_809D0124
/* 809CFF60  3C 60 80 9D */	lis r3, __vt__11daNpc_Grd_c@ha
/* 809CFF64  38 03 3D D0 */	addi r0, r3, __vt__11daNpc_Grd_c@l
/* 809CFF68  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809CFF6C  3B A0 00 00 */	li r29, 0
/* 809CFF70  3B 80 00 00 */	li r28, 0
/* 809CFF74  3C 60 80 9D */	lis r3, l_resNames@ha
/* 809CFF78  3B 43 3C FC */	addi r26, r3, l_resNames@l
/* 809CFF7C  3C 60 80 9D */	lis r3, l_loadRes_list@ha
/* 809CFF80  3B 63 3C F0 */	addi r27, r3, l_loadRes_list@l
/* 809CFF84  48 00 00 20 */	b lbl_809CFFA4
lbl_809CFF88:
/* 809CFF88  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 809CFF8C  7C 7E 1A 14 */	add r3, r30, r3
/* 809CFF90  54 00 10 3A */	slwi r0, r0, 2
/* 809CFF94  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809CFF98  4B 65 D0 70 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809CFF9C  3B BD 00 04 */	addi r29, r29, 4
/* 809CFFA0  3B 9C 00 08 */	addi r28, r28, 8
lbl_809CFFA4:
/* 809CFFA4  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 809CFFA8  54 00 10 3A */	slwi r0, r0, 2
/* 809CFFAC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809CFFB0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809CFFB4  2C 00 00 00 */	cmpwi r0, 0
/* 809CFFB8  40 80 FF D0 */	bge lbl_809CFF88
/* 809CFFBC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809CFFC0  28 00 00 00 */	cmplwi r0, 0
/* 809CFFC4  41 82 00 0C */	beq lbl_809CFFD0
/* 809CFFC8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809CFFCC  4B 64 13 44 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809CFFD0:
/* 809CFFD0  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 809CFFD4  41 82 00 84 */	beq lbl_809D0058
/* 809CFFD8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809CFFDC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809CFFE0  90 7E 0C D0 */	stw r3, 0xcd0(r30)
/* 809CFFE4  38 03 00 2C */	addi r0, r3, 0x2c
/* 809CFFE8  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 809CFFEC  38 03 00 84 */	addi r0, r3, 0x84
/* 809CFFF0  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 809CFFF4  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 809CFFF8  41 82 00 54 */	beq lbl_809D004C
/* 809CFFFC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809D0000  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809D0004  90 7E 0D B4 */	stw r3, 0xdb4(r30)
/* 809D0008  38 03 00 58 */	addi r0, r3, 0x58
/* 809D000C  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 809D0010  34 1E 0D B8 */	addic. r0, r30, 0xdb8
/* 809D0014  41 82 00 10 */	beq lbl_809D0024
/* 809D0018  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha
/* 809D001C  38 03 3E 78 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809D0020  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_809D0024:
/* 809D0024  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 809D0028  41 82 00 24 */	beq lbl_809D004C
/* 809D002C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809D0030  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809D0034  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 809D0038  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 809D003C  41 82 00 10 */	beq lbl_809D004C
/* 809D0040  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha
/* 809D0044  38 03 3E 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809D0048  90 1E 0D B0 */	stw r0, 0xdb0(r30)
lbl_809D004C:
/* 809D004C  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 809D0050  38 80 00 00 */	li r4, 0
/* 809D0054  4B 6B 40 90 */	b __dt__12dCcD_GObjInfFv
lbl_809D0058:
/* 809D0058  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809D005C  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809D0060  38 84 31 10 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809D0064  38 A0 00 08 */	li r5, 8
/* 809D0068  38 C0 00 03 */	li r6, 3
/* 809D006C  4B 99 1C 7C */	b __destroy_arr
/* 809D0070  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 809D0074  41 82 00 88 */	beq lbl_809D00FC
/* 809D0078  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809D007C  38 03 3E 90 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809D0080  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 809D0084  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 809D0088  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D008C  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D0090  38 A0 00 06 */	li r5, 6
/* 809D0094  38 C0 00 04 */	li r6, 4
/* 809D0098  4B 99 1C 50 */	b __destroy_arr
/* 809D009C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809D00A0  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D00A4  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D00A8  38 A0 00 06 */	li r5, 6
/* 809D00AC  38 C0 00 04 */	li r6, 4
/* 809D00B0  4B 99 1C 38 */	b __destroy_arr
/* 809D00B4  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809D00B8  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D00BC  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D00C0  38 A0 00 06 */	li r5, 6
/* 809D00C4  38 C0 00 04 */	li r6, 4
/* 809D00C8  4B 99 1C 20 */	b __destroy_arr
/* 809D00CC  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809D00D0  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha
/* 809D00D4  38 84 32 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 809D00D8  38 A0 00 06 */	li r5, 6
/* 809D00DC  38 C0 00 04 */	li r6, 4
/* 809D00E0  4B 99 1C 08 */	b __destroy_arr
/* 809D00E4  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809D00E8  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha
/* 809D00EC  38 84 32 A4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D00F0  38 A0 00 0C */	li r5, 0xc
/* 809D00F4  38 C0 00 04 */	li r6, 4
/* 809D00F8  4B 99 1B F0 */	b __destroy_arr
lbl_809D00FC:
/* 809D00FC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809D0100  38 80 FF FF */	li r4, -1
/* 809D0104  4B 8F 03 1C */	b __dt__10Z2CreatureFv
/* 809D0108  7F C3 F3 78 */	mr r3, r30
/* 809D010C  38 80 00 00 */	li r4, 0
/* 809D0110  48 00 31 D5 */	bl __dt__8daNpcF_cFv
/* 809D0114  7F E0 07 35 */	extsh. r0, r31
/* 809D0118  40 81 00 0C */	ble lbl_809D0124
/* 809D011C  7F C3 F3 78 */	mr r3, r30
/* 809D0120  4B 8F EC 1C */	b __dl__FPv
lbl_809D0124:
/* 809D0124  7F C3 F3 78 */	mr r3, r30
/* 809D0128  39 61 00 20 */	addi r11, r1, 0x20
/* 809D012C  4B 99 20 F0 */	b _restgpr_26
/* 809D0130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D0134  7C 08 03 A6 */	mtlr r0
/* 809D0138  38 21 00 20 */	addi r1, r1, 0x20
/* 809D013C  4E 80 00 20 */	blr 
