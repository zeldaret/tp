lbl_80C1311C:
/* 80C1311C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C13120  7C 08 02 A6 */	mflr r0
/* 80C13124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1312C  7C 7F 1B 78 */	mr r31, r3
/* 80C13130  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C13134  3C 80 80 C1 */	lis r4, l_arcName@ha
/* 80C13138  38 84 33 04 */	addi r4, r4, l_arcName@l
/* 80C1313C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C13140  4B 41 9E C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C13144  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C13148  28 03 00 00 */	cmplwi r3, 0
/* 80C1314C  41 82 00 24 */	beq lbl_80C13170
/* 80C13150  4B 65 50 84 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C13154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C13158  41 82 00 18 */	beq lbl_80C13170
/* 80C1315C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C13160  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C13164  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C13168  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C1316C  4B 46 10 E4 */	b Release__4cBgSFP9dBgW_Base
lbl_80C13170:
/* 80C13170  38 60 00 01 */	li r3, 1
/* 80C13174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1317C  7C 08 03 A6 */	mtlr r0
/* 80C13180  38 21 00 10 */	addi r1, r1, 0x10
/* 80C13184  4E 80 00 20 */	blr 
