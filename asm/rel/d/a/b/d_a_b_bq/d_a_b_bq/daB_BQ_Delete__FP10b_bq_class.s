lbl_805B92F8:
/* 805B92F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B92FC  7C 08 02 A6 */	mflr r0
/* 805B9300  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9308  7C 7F 1B 78 */	mr r31, r3
/* 805B930C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805B9310  3C 80 80 5C */	lis r4, stringBase0@ha
/* 805B9314  38 84 A8 6C */	addi r4, r4, stringBase0@l
/* 805B9318  4B A7 3C F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805B931C  88 1F 13 9C */	lbz r0, 0x139c(r31)
/* 805B9320  28 00 00 00 */	cmplwi r0, 0
/* 805B9324  41 82 00 10 */	beq lbl_805B9334
/* 805B9328  38 00 00 00 */	li r0, 0
/* 805B932C  3C 60 80 5C */	lis r3, data_805BAD50@ha
/* 805B9330  98 03 AD 50 */	stb r0, data_805BAD50@l(r3)
lbl_805B9334:
/* 805B9334  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805B9338  28 00 00 00 */	cmplwi r0, 0
/* 805B933C  41 82 00 1C */	beq lbl_805B9358
/* 805B9340  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805B9344  4B A5 7F CC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 805B9348  38 7F 06 84 */	addi r3, r31, 0x684
/* 805B934C  4B D0 4C AC */	b deleteObject__14Z2SoundObjBaseFv
/* 805B9350  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 805B9354  4B D0 4C A4 */	b deleteObject__14Z2SoundObjBaseFv
lbl_805B9358:
/* 805B9358  38 60 00 01 */	li r3, 1
/* 805B935C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9364  7C 08 03 A6 */	mtlr r0
/* 805B9368  38 21 00 10 */	addi r1, r1, 0x10
/* 805B936C  4E 80 00 20 */	blr 
