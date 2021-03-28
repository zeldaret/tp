lbl_8076410C:
/* 8076410C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80764110  7C 08 02 A6 */	mflr r0
/* 80764114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80764118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076411C  7C 7F 1B 78 */	mr r31, r3
/* 80764120  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80764124  3C 80 80 76 */	lis r4, stringBase0@ha
/* 80764128  38 84 4D D4 */	addi r4, r4, stringBase0@l
/* 8076412C  4B 8C 8E DC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80764130  88 1F 0A 6B */	lbz r0, 0xa6b(r31)
/* 80764134  28 00 00 00 */	cmplwi r0, 0
/* 80764138  41 82 00 10 */	beq lbl_80764148
/* 8076413C  38 00 00 00 */	li r0, 0
/* 80764140  3C 60 80 76 */	lis r3, data_80764F80@ha
/* 80764144  98 03 4F 80 */	stb r0, data_80764F80@l(r3)
lbl_80764148:
/* 80764148  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8076414C  28 00 00 00 */	cmplwi r0, 0
/* 80764150  41 82 00 0C */	beq lbl_8076415C
/* 80764154  80 7F 09 68 */	lwz r3, 0x968(r31)
/* 80764158  4B 8A D1 B8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8076415C:
/* 8076415C  38 60 00 01 */	li r3, 1
/* 80764160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80764164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80764168  7C 08 03 A6 */	mtlr r0
/* 8076416C  38 21 00 10 */	addi r1, r1, 0x10
/* 80764170  4E 80 00 20 */	blr 
