lbl_8022CB10:
/* 8022CB10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022CB14  7C 08 02 A6 */	mflr r0
/* 8022CB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022CB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8022CB20  48 13 56 BD */	bl _savegpr_29
/* 8022CB24  7C 9D 23 78 */	mr r29, r4
/* 8022CB28  7C BE 2B 78 */	mr r30, r5
/* 8022CB2C  7C DF 33 79 */	or. r31, r6, r6
/* 8022CB30  80 63 00 04 */	lwz r3, 4(r3)
/* 8022CB34  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 8022CB38  41 82 00 50 */	beq lbl_8022CB88
/* 8022CB3C  88 03 04 CB */	lbz r0, 0x4cb(r3)
/* 8022CB40  28 00 00 00 */	cmplwi r0, 0
/* 8022CB44  41 82 00 44 */	beq lbl_8022CB88
/* 8022CB48  88 6D 87 E4 */	lbz r3, struct_80450D64+0x0(r13)
/* 8022CB4C  7C 63 07 75 */	extsb. r3, r3
/* 8022CB50  41 82 00 24 */	beq lbl_8022CB74
/* 8022CB54  4B E0 05 19 */	bl dComIfGp_getReverb__Fi
/* 8022CB58  7C 67 1B 78 */	mr r7, r3
/* 8022CB5C  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 8022CB60  7F A4 EB 78 */	mr r4, r29
/* 8022CB64  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8022CB68  7F E6 FB 78 */	mr r6, r31
/* 8022CB6C  48 09 FE AD */	bl playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
/* 8022CB70  48 00 00 5C */	b lbl_8022CBCC
lbl_8022CB74:
/* 8022CB74  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 8022CB78  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8022CB7C  38 E0 00 00 */	li r7, 0
/* 8022CB80  48 09 FE 99 */	bl playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
/* 8022CB84  48 00 00 48 */	b lbl_8022CBCC
lbl_8022CB88:
/* 8022CB88  88 6D 87 E4 */	lbz r3, struct_80450D64+0x0(r13)
/* 8022CB8C  7C 63 07 75 */	extsb. r3, r3
/* 8022CB90  41 82 00 24 */	beq lbl_8022CBB4
/* 8022CB94  4B E0 04 D9 */	bl dComIfGp_getReverb__Fi
/* 8022CB98  7C 67 1B 78 */	mr r7, r3
/* 8022CB9C  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 8022CBA0  7F A4 EB 78 */	mr r4, r29
/* 8022CBA4  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8022CBA8  38 C0 00 00 */	li r6, 0
/* 8022CBAC  48 09 FE 6D */	bl playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
/* 8022CBB0  48 00 00 1C */	b lbl_8022CBCC
lbl_8022CBB4:
/* 8022CBB4  80 6D 85 F0 */	lwz r3, data_80450B70(r13)
/* 8022CBB8  7F A4 EB 78 */	mr r4, r29
/* 8022CBBC  57 C5 06 3E */	clrlwi r5, r30, 0x18
/* 8022CBC0  38 C0 00 00 */	li r6, 0
/* 8022CBC4  38 E0 00 00 */	li r7, 0
/* 8022CBC8  48 09 FE 51 */	bl playOneShotVoice__12Z2SpeechMgr2FUcUsP3VecSc
lbl_8022CBCC:
/* 8022CBCC  39 61 00 20 */	addi r11, r1, 0x20
/* 8022CBD0  48 13 56 59 */	bl _restgpr_29
/* 8022CBD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022CBD8  7C 08 03 A6 */	mtlr r0
/* 8022CBDC  38 21 00 20 */	addi r1, r1, 0x20
/* 8022CBE0  4E 80 00 20 */	blr 
