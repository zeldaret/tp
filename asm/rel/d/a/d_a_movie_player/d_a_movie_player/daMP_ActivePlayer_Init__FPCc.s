lbl_80878758:
/* 80878758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8087875C  7C 08 02 A6 */	mflr r0
/* 80878760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878768  93 C1 00 08 */	stw r30, 8(r1)
/* 8087876C  7C 7F 1B 78 */	mr r31, r3
/* 80878770  3C 60 80 88 */	lis r3, lit_1109@ha
/* 80878774  38 63 95 A0 */	addi r3, r3, lit_1109@l
/* 80878778  3F C3 00 0D */	addis r30, r3, 0xd
/* 8087877C  38 60 00 00 */	li r3, 0
/* 80878780  4B FF EA 75 */	bl daMP_THPPlayerInit__Fl
/* 80878784  7F E3 FB 78 */	mr r3, r31
/* 80878788  38 80 00 00 */	li r4, 0
/* 8087878C  4B FF EB 81 */	bl daMP_THPPlayerOpen__FPCci
/* 80878790  2C 03 00 00 */	cmpwi r3, 0
/* 80878794  40 82 00 20 */	bne lbl_808787B4
/* 80878798  3C 60 80 88 */	lis r3, stringBase0@ha
/* 8087879C  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 808787A0  38 63 02 A6 */	addi r3, r3, 0x2a6
/* 808787A4  4C C6 31 82 */	crclr 6
/* 808787A8  4B 78 E3 14 */	b OSReport
/* 808787AC  38 60 00 00 */	li r3, 0
/* 808787B0  48 00 00 F4 */	b lbl_808788A4
lbl_808787B4:
/* 808787B4  38 7E C5 40 */	addi r3, r30, -15040
/* 808787B8  4B FF FD B1 */	bl daMP_THPPlayerGetVideoInfo__FP12THPVideoInfo
/* 808787BC  38 7E C5 4C */	addi r3, r30, -15028
/* 808787C0  4B FF FD F1 */	bl daMP_THPPlayerGetAudioInfo__FP12THPAudioInfo
/* 808787C4  48 00 01 01 */	bl getManager__8JUTVideoFv
/* 808787C8  48 00 00 F5 */	bl getRenderMode__8JUTVideoCFv
/* 808787CC  A3 E3 00 04 */	lhz r31, 4(r3)
/* 808787D0  48 00 00 F5 */	bl getManager__8JUTVideoFv
/* 808787D4  48 00 00 E9 */	bl getRenderMode__8JUTVideoCFv
/* 808787D8  A0 83 00 06 */	lhz r4, 6(r3)
/* 808787DC  80 1E C5 40 */	lwz r0, -0x3ac0(r30)
/* 808787E0  7C 00 F8 50 */	subf r0, r0, r31
/* 808787E4  54 00 F8 7E */	srwi r0, r0, 1
/* 808787E8  90 1E C5 5C */	stw r0, -0x3aa4(r30)
/* 808787EC  38 7E C5 40 */	addi r3, r30, -15040
/* 808787F0  80 03 00 04 */	lwz r0, 4(r3)
/* 808787F4  7C 00 20 50 */	subf r0, r0, r4
/* 808787F8  54 00 F8 7E */	srwi r0, r0, 1
/* 808787FC  90 1E C5 60 */	stw r0, -0x3aa0(r30)
/* 80878800  4B FF EF 41 */	bl daMP_THPPlayerCalcNeedMemory__Fv
/* 80878804  7C 7F 1B 78 */	mr r31, r3
/* 80878808  4B 79 65 E4 */	b mDoExt_getArchiveHeap__Fv
/* 8087880C  7F E4 FB 78 */	mr r4, r31
/* 80878810  38 A0 00 20 */	li r5, 0x20
/* 80878814  4B A5 5C C0 */	b alloc__7JKRHeapFUli
/* 80878818  90 7E C5 64 */	stw r3, -0x3a9c(r30)
/* 8087881C  28 03 00 00 */	cmplwi r3, 0
/* 80878820  40 82 00 20 */	bne lbl_80878840
/* 80878824  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878828  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 8087882C  38 63 02 C1 */	addi r3, r3, 0x2c1
/* 80878830  4C C6 31 82 */	crclr 6
/* 80878834  4B 78 E2 88 */	b OSReport
/* 80878838  38 60 00 00 */	li r3, 0
/* 8087883C  48 00 00 68 */	b lbl_808788A4
lbl_80878840:
/* 80878840  4B FF EF B1 */	bl daMP_THPPlayerSetBuffer__FPUc
/* 80878844  3B DE C5 4C */	addi r30, r30, -15028
/* 80878848  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 8087884C  28 00 00 01 */	cmplwi r0, 1
/* 80878850  41 82 00 1C */	beq lbl_8087886C
/* 80878854  4B AC 9E C0 */	b OSGetTick
/* 80878858  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8087885C  7C 03 23 96 */	divwu r0, r3, r4
/* 80878860  7C 00 21 D6 */	mullw r0, r0, r4
/* 80878864  7C A0 18 50 */	subf r5, r0, r3
/* 80878868  48 00 00 08 */	b lbl_80878870
lbl_8087886C:
/* 8087886C  38 A0 00 00 */	li r5, 0
lbl_80878870:
/* 80878870  38 60 00 00 */	li r3, 0
/* 80878874  38 80 00 00 */	li r4, 0
/* 80878878  4B FF F7 41 */	bl daMP_THPPlayerPrepare__Flll
/* 8087887C  2C 03 00 00 */	cmpwi r3, 0
/* 80878880  40 82 00 20 */	bne lbl_808788A0
/* 80878884  3C 60 80 88 */	lis r3, stringBase0@ha
/* 80878888  38 63 91 1C */	addi r3, r3, stringBase0@l
/* 8087888C  38 63 02 DB */	addi r3, r3, 0x2db
/* 80878890  4C C6 31 82 */	crclr 6
/* 80878894  4B 78 E2 28 */	b OSReport
/* 80878898  38 60 00 00 */	li r3, 0
/* 8087889C  48 00 00 08 */	b lbl_808788A4
lbl_808788A0:
/* 808788A0  38 60 00 01 */	li r3, 1
lbl_808788A4:
/* 808788A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808788A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 808788AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808788B0  7C 08 03 A6 */	mtlr r0
/* 808788B4  38 21 00 10 */	addi r1, r1, 0x10
/* 808788B8  4E 80 00 20 */	blr 
