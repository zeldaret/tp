lbl_80BF8D24:
/* 80BF8D24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8D28  7C 08 02 A6 */	mflr r0
/* 80BF8D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8D30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8D34  7C 7F 1B 78 */	mr r31, r3
/* 80BF8D38  4B FF FD 1D */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF8D3C  7F E3 FB 78 */	mr r3, r31
/* 80BF8D40  4B FF FD 41 */	bl stopEmitterSrc00Sand__13daObjGeyser_cFv
/* 80BF8D44  7F E3 FB 78 */	mr r3, r31
/* 80BF8D48  4B FF FD 65 */	bl stopEmitterSrc01Smk__13daObjGeyser_cFv
/* 80BF8D4C  7F E3 FB 78 */	mr r3, r31
/* 80BF8D50  4B FF FF 51 */	bl stopEmitterClm00__13daObjGeyser_cFv
/* 80BF8D54  7F E3 FB 78 */	mr r3, r31
/* 80BF8D58  4B FF FF 75 */	bl stopEmitterSmk01__13daObjGeyser_cFv
/* 80BF8D5C  7F E3 FB 78 */	mr r3, r31
/* 80BF8D60  4B FF FF 99 */	bl stopEmitterSmk02__13daObjGeyser_cFv
/* 80BF8D64  7F E3 FB 78 */	mr r3, r31
/* 80BF8D68  4B FF F8 D5 */	bl cutPntWind__13daObjGeyser_cFv
/* 80BF8D6C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BF8D70  3C 80 80 C0 */	lis r4, l_arcName@ha /* 0x80BF9088@ha */
/* 80BF8D74  38 84 90 88 */	addi r4, r4, l_arcName@l /* 0x80BF9088@l */
/* 80BF8D78  80 84 00 00 */	lwz r4, 0(r4)
/* 80BF8D7C  4B 43 42 8D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BF8D80  38 60 00 01 */	li r3, 1
/* 80BF8D84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8D8C  7C 08 03 A6 */	mtlr r0
/* 80BF8D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8D94  4E 80 00 20 */	blr 
