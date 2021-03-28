lbl_80BABFA4:
/* 80BABFA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BABFA8  7C 08 02 A6 */	mflr r0
/* 80BABFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BABFB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BABFB4  7C 7F 1B 78 */	mr r31, r3
/* 80BABFB8  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80BABFBC  3C 80 80 BB */	lis r4, stringBase0@ha
/* 80BABFC0  38 84 CA 64 */	addi r4, r4, stringBase0@l
/* 80BABFC4  4B 48 10 44 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BABFC8  88 1F 09 F4 */	lbz r0, 0x9f4(r31)
/* 80BABFCC  28 00 00 00 */	cmplwi r0, 0
/* 80BABFD0  41 82 00 10 */	beq lbl_80BABFE0
/* 80BABFD4  38 00 00 00 */	li r0, 0
/* 80BABFD8  3C 60 80 BB */	lis r3, data_80BACC88@ha
/* 80BABFDC  98 03 CC 88 */	stb r0, data_80BACC88@l(r3)
lbl_80BABFE0:
/* 80BABFE0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BABFE4  28 00 00 00 */	cmplwi r0, 0
/* 80BABFE8  41 82 00 0C */	beq lbl_80BABFF4
/* 80BABFEC  80 7F 06 20 */	lwz r3, 0x620(r31)
/* 80BABFF0  4B 46 53 20 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80BABFF4:
/* 80BABFF4  38 60 00 01 */	li r3, 1
/* 80BABFF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BABFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAC000  7C 08 03 A6 */	mtlr r0
/* 80BAC004  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAC008  4E 80 00 20 */	blr 
