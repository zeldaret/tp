lbl_80C68124:
/* 80C68124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C68128  7C 08 02 A6 */	mflr r0
/* 80C6812C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C68130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C68134  93 C1 00 08 */	stw r30, 8(r1)
/* 80C68138  7C 7E 1B 78 */	mr r30, r3
/* 80C6813C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C68140  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C68144  40 82 00 1C */	bne lbl_80C68160
/* 80C68148  28 1E 00 00 */	cmplwi r30, 0
/* 80C6814C  41 82 00 08 */	beq lbl_80C68154
/* 80C68150  4B 3B 0A 14 */	b __ct__10fopAc_ac_cFv
lbl_80C68154:
/* 80C68154  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C68158  60 00 00 08 */	ori r0, r0, 8
/* 80C6815C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C68160:
/* 80C68160  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C68164  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C68168  98 1E 05 82 */	stb r0, 0x582(r30)
/* 80C6816C  38 7E 05 68 */	addi r3, r30, 0x568
/* 80C68170  3C 80 80 C7 */	lis r4, l_arcName@ha
/* 80C68174  38 84 85 2C */	addi r4, r4, l_arcName@l
/* 80C68178  80 84 00 00 */	lwz r4, 0(r4)
/* 80C6817C  4B 3C 4D 40 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C68180  7C 7F 1B 78 */	mr r31, r3
/* 80C68184  2C 1F 00 04 */	cmpwi r31, 4
/* 80C68188  40 82 00 50 */	bne lbl_80C681D8
/* 80C6818C  7F C3 F3 78 */	mr r3, r30
/* 80C68190  3C 80 80 C6 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80C68194  38 84 7F 18 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80C68198  88 1E 05 82 */	lbz r0, 0x582(r30)
/* 80C6819C  54 00 10 3A */	slwi r0, r0, 2
/* 80C681A0  3C A0 80 C7 */	lis r5, l_heap_size@ha
/* 80C681A4  38 A5 85 14 */	addi r5, r5, l_heap_size@l
/* 80C681A8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80C681AC  4B 3B 23 04 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C681B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C681B4  40 82 00 0C */	bne lbl_80C681C0
/* 80C681B8  38 60 00 05 */	li r3, 5
/* 80C681BC  48 00 00 20 */	b lbl_80C681DC
lbl_80C681C0:
/* 80C681C0  7F C3 F3 78 */	mr r3, r30
/* 80C681C4  4B FF FE 8D */	bl Create__14daObjLv4Gear_cFv
/* 80C681C8  2C 03 00 00 */	cmpwi r3, 0
/* 80C681CC  40 82 00 0C */	bne lbl_80C681D8
/* 80C681D0  38 60 00 05 */	li r3, 5
/* 80C681D4  48 00 00 08 */	b lbl_80C681DC
lbl_80C681D8:
/* 80C681D8  7F E3 FB 78 */	mr r3, r31
lbl_80C681DC:
/* 80C681DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C681E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C681E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C681E8  7C 08 03 A6 */	mtlr r0
/* 80C681EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C681F0  4E 80 00 20 */	blr 
