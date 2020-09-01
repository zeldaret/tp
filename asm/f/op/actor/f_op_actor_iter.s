.include "macros.inc"

.section .text, "ax" # 800197bc


.global fopAcIt_Executor
fopAcIt_Executor:
/* 800197BC 000166FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800197C0 00016700  7C 08 02 A6 */	mflr r0
/* 800197C4 00016704  90 01 00 14 */	stw r0, 0x14(r1)
/* 800197C8 00016708  90 61 00 08 */	stw r3, 8(r1)
/* 800197CC 0001670C  90 81 00 0C */	stw r4, 0xc(r1)
/* 800197D0 00016710  3C 60 80 3A */	lis r3, lbl_803A35E0@ha
/* 800197D4 00016714  38 63 35 E0 */	addi r3, r3, lbl_803A35E0@l
/* 800197D8 00016718  3C 80 80 26 */	lis r4, cTgIt_MethodCall@ha
/* 800197DC 0001671C  38 84 6A 7C */	addi r4, r4, cTgIt_MethodCall@l
/* 800197E0 00016720  38 A1 00 08 */	addi r5, r1, 8
/* 800197E4 00016724  48 24 C8 7D */	bl cLsIt_Method
/* 800197E8 00016728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800197EC 0001672C  7C 08 03 A6 */	mtlr r0
/* 800197F0 00016730  38 21 00 10 */	addi r1, r1, 0x10
/* 800197F4 00016734  4E 80 00 20 */	blr 

.global fopAcIt_Judge
fopAcIt_Judge:
/* 800197F8 00016738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800197FC 0001673C  7C 08 02 A6 */	mflr r0
/* 80019800 00016740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019804 00016744  90 61 00 08 */	stw r3, 8(r1)
/* 80019808 00016748  90 81 00 0C */	stw r4, 0xc(r1)
/* 8001980C 0001674C  3C 60 80 3A */	lis r3, lbl_803A35E0@ha
/* 80019810 00016750  38 63 35 E0 */	addi r3, r3, lbl_803A35E0@l
.global cTgIt_JudgeFilter
/* 80019814 00016754  3C 80 80 26 */	lis r4, cTgIt_JudgeFilter@ha
.global cTgIt_JudgeFilter
/* 80019818 00016758  38 84 6A B0 */	addi r4, r4, cTgIt_JudgeFilter@l
/* 8001981C 0001675C  38 A1 00 08 */	addi r5, r1, 8
/* 80019820 00016760  48 24 C8 79 */	bl cLsIt_Judge
/* 80019824 00016764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019828 00016768  7C 08 03 A6 */	mtlr r0
/* 8001982C 0001676C  38 21 00 10 */	addi r1, r1, 0x10
/* 80019830 00016770  4E 80 00 20 */	blr 

