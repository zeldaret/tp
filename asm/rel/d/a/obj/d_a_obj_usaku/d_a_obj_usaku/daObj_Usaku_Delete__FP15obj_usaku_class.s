lbl_80D21050:
/* 80D21050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21054  7C 08 02 A6 */	mflr r0
/* 80D21058  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2105C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21060  7C 7F 1B 78 */	mr r31, r3
/* 80D21064  38 7F 05 68 */	addi r3, r31, 0x568
/* 80D21068  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D2106C  38 84 12 EC */	addi r4, r4, stringBase0@l
/* 80D21070  4B 30 BF 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D21074  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80D21078  28 04 00 00 */	cmplwi r4, 0
/* 80D2107C  41 82 00 14 */	beq lbl_80D21090
/* 80D21080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D21084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D21088  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D2108C  4B 35 31 C4 */	b Release__4cBgSFP9dBgW_Base
lbl_80D21090:
/* 80D21090  38 60 00 01 */	li r3, 1
/* 80D21094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2109C  7C 08 03 A6 */	mtlr r0
/* 80D210A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D210A4  4E 80 00 20 */	blr 
