lbl_80BC4768:
/* 80BC4768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC476C  7C 08 02 A6 */	mflr r0
/* 80BC4770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4778  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC477C  41 82 00 B4 */	beq lbl_80BC4830
/* 80BC4780  38 7F 05 74 */	addi r3, r31, 0x574
/* 80BC4784  4B 6A 3A 50 */	b ChkUsed__9cBgW_BgIdCFv
/* 80BC4788  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC478C  41 82 00 18 */	beq lbl_80BC47A4
/* 80BC4790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC4794  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC4798  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC479C  38 9F 05 74 */	addi r4, r31, 0x574
/* 80BC47A0  4B 4A FA B0 */	b Release__4cBgSFP9dBgW_Base
lbl_80BC47A4:
/* 80BC47A4  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80BC47A8  4B 6A 3A 2C */	b ChkUsed__9cBgW_BgIdCFv
/* 80BC47AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC47B0  41 82 00 18 */	beq lbl_80BC47C8
/* 80BC47B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC47B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC47BC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BC47C0  38 9F 06 6C */	addi r4, r31, 0x66c
/* 80BC47C4  4B 4A FA 8C */	b Release__4cBgSFP9dBgW_Base
lbl_80BC47C8:
/* 80BC47C8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BC47CC  3C 80 80 BC */	lis r4, l_arcName@ha
/* 80BC47D0  38 84 49 E0 */	addi r4, r4, l_arcName@l
/* 80BC47D4  80 84 00 00 */	lwz r4, 0(r4)
/* 80BC47D8  4B 46 88 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BC47DC  34 1F 06 68 */	addic. r0, r31, 0x668
/* 80BC47E0  41 82 00 20 */	beq lbl_80BC4800
/* 80BC47E4  34 7F 06 6C */	addic. r3, r31, 0x66c
/* 80BC47E8  41 82 00 18 */	beq lbl_80BC4800
/* 80BC47EC  3C 80 80 3B */	lis r4, __vt__4dBgW@ha
/* 80BC47F0  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l
/* 80BC47F4  90 1F 06 70 */	stw r0, 0x670(r31)
/* 80BC47F8  38 80 00 00 */	li r4, 0
/* 80BC47FC  4B 4B 4B 40 */	b __dt__4cBgWFv
lbl_80BC4800:
/* 80BC4800  34 1F 05 70 */	addic. r0, r31, 0x570
/* 80BC4804  41 82 00 20 */	beq lbl_80BC4824
/* 80BC4808  34 7F 05 74 */	addic. r3, r31, 0x574
/* 80BC480C  41 82 00 18 */	beq lbl_80BC4824
/* 80BC4810  3C 80 80 3B */	lis r4, __vt__4dBgW@ha
/* 80BC4814  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l
/* 80BC4818  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80BC481C  38 80 00 00 */	li r4, 0
/* 80BC4820  4B 4B 4B 1C */	b __dt__4cBgWFv
lbl_80BC4824:
/* 80BC4824  7F E3 FB 78 */	mr r3, r31
/* 80BC4828  38 80 00 00 */	li r4, 0
/* 80BC482C  4B 45 44 60 */	b __dt__10fopAc_ac_cFv
lbl_80BC4830:
/* 80BC4830  38 60 00 01 */	li r3, 1
/* 80BC4834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC483C  7C 08 03 A6 */	mtlr r0
/* 80BC4840  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4844  4E 80 00 20 */	blr 
