lbl_804872E4:
/* 804872E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804872E8  7C 08 02 A6 */	mflr r0
/* 804872EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804872F0  88 03 04 99 */	lbz r0, 0x499(r3)
/* 804872F4  7C 00 07 75 */	extsb. r0, r0
/* 804872F8  40 82 00 20 */	bne lbl_80487318
/* 804872FC  28 03 00 00 */	cmplwi r3, 0
/* 80487300  41 82 00 08 */	beq lbl_80487308
/* 80487304  38 63 05 68 */	addi r3, r3, 0x568
lbl_80487308:
/* 80487308  3C 80 80 48 */	lis r4, l_arcName@ha
/* 8048730C  38 84 73 BC */	addi r4, r4, l_arcName@l
/* 80487310  80 84 00 00 */	lwz r4, 0(r4)
/* 80487314  4B BA 5C F4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80487318:
/* 80487318  38 60 00 01 */	li r3, 1
/* 8048731C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487320  7C 08 03 A6 */	mtlr r0
/* 80487324  38 21 00 10 */	addi r1, r1, 0x10
/* 80487328  4E 80 00 20 */	blr 
