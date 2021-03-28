lbl_805A9FFC:
/* 805A9FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA000  7C 08 02 A6 */	mflr r0
/* 805AA004  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA00C  7C 7F 1B 78 */	mr r31, r3
/* 805AA010  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 805AA014  28 00 00 00 */	cmplwi r0, 0
/* 805AA018  41 82 00 0C */	beq lbl_805AA024
/* 805AA01C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA020  4B A6 72 F0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805AA024:
/* 805AA024  38 60 00 00 */	li r3, 0
/* 805AA028  4B A8 29 54 */	b getLayerNo__14dComIfG_play_cFi
/* 805AA02C  2C 03 00 00 */	cmpwi r3, 0
/* 805AA030  40 82 00 0C */	bne lbl_805AA03C
/* 805AA034  38 60 00 01 */	li r3, 1
/* 805AA038  48 00 00 18 */	b lbl_805AA050
lbl_805AA03C:
/* 805AA03C  38 7F 05 68 */	addi r3, r31, 0x568
/* 805AA040  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805AA044  38 84 A4 C8 */	addi r4, r4, stringBase0@l
/* 805AA048  4B A8 2F C0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805AA04C  38 60 00 01 */	li r3, 1
lbl_805AA050:
/* 805AA050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA058  7C 08 03 A6 */	mtlr r0
/* 805AA05C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA060  4E 80 00 20 */	blr 
