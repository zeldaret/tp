lbl_805CA670:
/* 805CA670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CA674  7C 08 02 A6 */	mflr r0
/* 805CA678  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CA67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CA680  7C 7F 1B 78 */	mr r31, r3
/* 805CA684  38 7F 06 3C */	addi r3, r31, 0x63c
/* 805CA688  3C 80 80 5D */	lis r4, stringBase0@ha
/* 805CA68C  38 84 AE CC */	addi r4, r4, stringBase0@l
/* 805CA690  4B A6 29 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805CA694  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805CA698  28 00 00 00 */	cmplwi r0, 0
/* 805CA69C  41 82 00 0C */	beq lbl_805CA6A8
/* 805CA6A0  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805CA6A4  4B A4 6C 6C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805CA6A8:
/* 805CA6A8  38 60 00 01 */	li r3, 1
/* 805CA6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CA6B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA6B4  7C 08 03 A6 */	mtlr r0
/* 805CA6B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA6BC  4E 80 00 20 */	blr 
