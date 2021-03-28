lbl_80C15248:
/* 80C15248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1524C  7C 08 02 A6 */	mflr r0
/* 80C15250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C15254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C15258  7C 7F 1B 78 */	mr r31, r3
/* 80C1525C  3C 60 80 C1 */	lis r3, l_arcName@ha
/* 80C15260  38 83 53 8C */	addi r4, r3, l_arcName@l
/* 80C15264  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C15268  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1526C  4B 41 7D 9C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C15270  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C15274  28 03 00 00 */	cmplwi r3, 0
/* 80C15278  41 82 00 24 */	beq lbl_80C1529C
/* 80C1527C  4B 65 2F 58 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C15280  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C15284  41 82 00 18 */	beq lbl_80C1529C
/* 80C15288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1528C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C15290  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C15294  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C15298  4B 45 EF B8 */	b Release__4cBgSFP9dBgW_Base
lbl_80C1529C:
/* 80C1529C  38 60 00 01 */	li r3, 1
/* 80C152A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C152A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C152A8  7C 08 03 A6 */	mtlr r0
/* 80C152AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C152B0  4E 80 00 20 */	blr 
