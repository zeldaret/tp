lbl_805164DC:
/* 805164DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805164E0  7C 08 02 A6 */	mflr r0
/* 805164E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805164E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805164EC  7C 7F 1B 78 */	mr r31, r3
/* 805164F0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805164F4  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 805164F8  4B B1 6B 11 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805164FC  88 1F 12 5C */	lbz r0, 0x125c(r31)
/* 80516500  28 00 00 00 */	cmplwi r0, 0
/* 80516504  41 82 00 10 */	beq lbl_80516514
/* 80516508  38 00 00 00 */	li r0, 0
/* 8051650C  3C 60 80 52 */	lis r3, data_80519184@ha /* 0x80519184@ha */
/* 80516510  98 03 91 84 */	stb r0, data_80519184@l(r3)  /* 0x80519184@l */
lbl_80516514:
/* 80516514  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80516518  28 00 00 00 */	cmplwi r0, 0
/* 8051651C  41 82 00 0C */	beq lbl_80516528
/* 80516520  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80516524  4B AF AD ED */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80516528:
/* 80516528  38 60 00 01 */	li r3, 1
/* 8051652C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80516530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80516534  7C 08 03 A6 */	mtlr r0
/* 80516538  38 21 00 10 */	addi r1, r1, 0x10
/* 8051653C  4E 80 00 20 */	blr 
