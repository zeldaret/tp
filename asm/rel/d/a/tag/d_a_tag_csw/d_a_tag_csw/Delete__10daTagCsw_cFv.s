lbl_80D5789C:
/* 80D5789C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D578A0  7C 08 02 A6 */	mflr r0
/* 80D578A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D578A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D578AC  7C 7F 1B 78 */	mr r31, r3
/* 80D578B0  80 63 05 84 */	lwz r3, 0x584(r3)
/* 80D578B4  28 03 00 00 */	cmplwi r3, 0
/* 80D578B8  41 82 00 24 */	beq lbl_80D578DC
/* 80D578BC  4B 51 09 19 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D578C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D578C4  41 82 00 18 */	beq lbl_80D578DC
/* 80D578C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D578CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D578D0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D578D4  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80D578D8  4B 31 C9 79 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D578DC:
/* 80D578DC  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80D578E0  28 03 00 00 */	cmplwi r3, 0
/* 80D578E4  41 82 00 24 */	beq lbl_80D57908
/* 80D578E8  4B 51 08 ED */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D578EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D578F0  41 82 00 18 */	beq lbl_80D57908
/* 80D578F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D578F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D578FC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D57900  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80D57904  4B 31 C9 4D */	bl Release__4cBgSFP9dBgW_Base
lbl_80D57908:
/* 80D57908  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D5790C  28 03 00 00 */	cmplwi r3, 0
/* 80D57910  41 82 00 24 */	beq lbl_80D57934
/* 80D57914  4B 51 08 C1 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80D57918  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D5791C  41 82 00 18 */	beq lbl_80D57934
/* 80D57920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D57924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D57928  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D5792C  80 9F 05 88 */	lwz r4, 0x588(r31)
/* 80D57930  4B 31 C9 21 */	bl Release__4cBgSFP9dBgW_Base
lbl_80D57934:
/* 80D57934  7F E3 FB 78 */	mr r3, r31
/* 80D57938  28 1F 00 00 */	cmplwi r31, 0
/* 80D5793C  41 82 00 08 */	beq lbl_80D57944
/* 80D57940  38 7F 05 68 */	addi r3, r31, 0x568
lbl_80D57944:
/* 80D57944  3C 80 80 D6 */	lis r4, l_arcName@ha /* 0x80D58648@ha */
/* 80D57948  38 84 86 48 */	addi r4, r4, l_arcName@l /* 0x80D58648@l */
/* 80D5794C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D57950  4B 2D 56 B9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D57954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D57958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5795C  7C 08 03 A6 */	mtlr r0
/* 80D57960  38 21 00 10 */	addi r1, r1, 0x10
/* 80D57964  4E 80 00 20 */	blr 
