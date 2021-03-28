lbl_80678D2C:
/* 80678D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80678D30  7C 08 02 A6 */	mflr r0
/* 80678D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80678D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80678D3C  7C 7F 1B 78 */	mr r31, r3
/* 80678D40  80 63 05 B0 */	lwz r3, 0x5b0(r3)
/* 80678D44  28 03 00 00 */	cmplwi r3, 0
/* 80678D48  41 82 00 24 */	beq lbl_80678D6C
/* 80678D4C  4B BE F4 88 */	b ChkUsed__9cBgW_BgIdCFv
/* 80678D50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80678D54  41 82 00 18 */	beq lbl_80678D6C
/* 80678D58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80678D5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80678D60  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80678D64  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80678D68  4B 9F B4 E8 */	b Release__4cBgSFP9dBgW_Base
lbl_80678D6C:
/* 80678D6C  38 00 00 00 */	li r0, 0
/* 80678D70  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80678D74  90 03 00 10 */	stw r0, 0x10(r3)
/* 80678D78  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80678D7C  90 03 00 10 */	stw r0, 0x10(r3)
/* 80678D80  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80678D84  3C 80 80 68 */	lis r4, l_arcName@ha
/* 80678D88  38 84 8F 70 */	addi r4, r4, l_arcName@l
/* 80678D8C  80 84 00 00 */	lwz r4, 0(r4)
/* 80678D90  4B 9B 42 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80678D94  38 60 00 01 */	li r3, 1
/* 80678D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80678D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80678DA0  7C 08 03 A6 */	mtlr r0
/* 80678DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80678DA8  4E 80 00 20 */	blr 
