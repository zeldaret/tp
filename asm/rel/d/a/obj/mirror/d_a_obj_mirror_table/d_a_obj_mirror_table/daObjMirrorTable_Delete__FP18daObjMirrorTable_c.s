lbl_80C9A9DC:
/* 80C9A9DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9A9E0  7C 08 02 A6 */	mflr r0
/* 80C9A9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9A9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9A9EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9A9F0  41 82 00 A8 */	beq lbl_80C9AA98
/* 80C9A9F4  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9A9F8  4B 5C D7 DC */	b ChkUsed__9cBgW_BgIdCFv
/* 80C9A9FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9AA00  41 82 00 18 */	beq lbl_80C9AA18
/* 80C9AA04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AA08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AA0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9AA10  38 9F 05 9C */	addi r4, r31, 0x59c
/* 80C9AA14  4B 3D 98 3C */	b Release__4cBgSFP9dBgW_Base
lbl_80C9AA18:
/* 80C9AA18  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80C9AA1C  4B 5C D7 B8 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C9AA20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9AA24  41 82 00 18 */	beq lbl_80C9AA3C
/* 80C9AA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AA30  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9AA34  38 9F 06 5C */	addi r4, r31, 0x65c
/* 80C9AA38  4B 3D 98 18 */	b Release__4cBgSFP9dBgW_Base
lbl_80C9AA3C:
/* 80C9AA3C  38 7F 07 1C */	addi r3, r31, 0x71c
/* 80C9AA40  4B 5C D7 94 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C9AA44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9AA48  41 82 00 18 */	beq lbl_80C9AA60
/* 80C9AA4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9AA50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9AA54  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9AA58  38 9F 07 1C */	addi r4, r31, 0x71c
/* 80C9AA5C  4B 3D 97 F4 */	b Release__4cBgSFP9dBgW_Base
lbl_80C9AA60:
/* 80C9AA60  38 7F 05 94 */	addi r3, r31, 0x594
/* 80C9AA64  3C 80 80 CA */	lis r4, l_arcName@ha
/* 80C9AA68  38 84 B2 A4 */	addi r4, r4, l_arcName@l
/* 80C9AA6C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C9AA70  4B 39 25 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C9AA74  38 7F 05 9C */	addi r3, r31, 0x59c
/* 80C9AA78  3C 80 80 CA */	lis r4, __dt__4dBgWFv@ha
/* 80C9AA7C  38 84 AA B0 */	addi r4, r4, __dt__4dBgWFv@l
/* 80C9AA80  38 A0 00 C0 */	li r5, 0xc0
/* 80C9AA84  38 C0 00 03 */	li r6, 3
/* 80C9AA88  4B 6C 72 60 */	b __destroy_arr
/* 80C9AA8C  7F E3 FB 78 */	mr r3, r31
/* 80C9AA90  38 80 00 00 */	li r4, 0
/* 80C9AA94  4B 37 E1 F8 */	b __dt__10fopAc_ac_cFv
lbl_80C9AA98:
/* 80C9AA98  38 60 00 01 */	li r3, 1
/* 80C9AA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9AAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9AAA4  7C 08 03 A6 */	mtlr r0
/* 80C9AAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9AAAC  4E 80 00 20 */	blr 
