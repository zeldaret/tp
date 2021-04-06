lbl_80C754A0:
/* 80C754A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C754A4  7C 08 02 A6 */	mflr r0
/* 80C754A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C754AC  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C75754@ha */
/* 80C754B0  38 63 57 54 */	addi r3, r3, l_HIO@l /* 0x80C75754@l */
/* 80C754B4  4B FF EA 59 */	bl __ct__17daLv6SwGate_HIO_cFv
/* 80C754B8  3C 80 80 C7 */	lis r4, __dt__17daLv6SwGate_HIO_cFv@ha /* 0x80C75434@ha */
/* 80C754BC  38 84 54 34 */	addi r4, r4, __dt__17daLv6SwGate_HIO_cFv@l /* 0x80C75434@l */
/* 80C754C0  3C A0 80 C7 */	lis r5, lit_3625@ha /* 0x80C75748@ha */
/* 80C754C4  38 A5 57 48 */	addi r5, r5, lit_3625@l /* 0x80C75748@l */
/* 80C754C8  4B FF E9 D1 */	bl __register_global_object
/* 80C754CC  3C 60 80 C7 */	lis r3, mCcDCyl__13daLv6SwGate_c@ha /* 0x80C755B8@ha */
/* 80C754D0  38 63 55 B8 */	addi r3, r3, mCcDCyl__13daLv6SwGate_c@l /* 0x80C755B8@l */
/* 80C754D4  38 A3 FF FC */	addi r5, r3, -4
/* 80C754D8  3C 60 80 C7 */	lis r3, mCcDObjInfo__13daLv6SwGate_c@ha /* 0x80C75530@ha */
/* 80C754DC  38 63 55 30 */	addi r3, r3, mCcDObjInfo__13daLv6SwGate_c@l /* 0x80C75530@l */
/* 80C754E0  38 83 FF FC */	addi r4, r3, -4
/* 80C754E4  38 00 00 06 */	li r0, 6
/* 80C754E8  7C 09 03 A6 */	mtctr r0
lbl_80C754EC:
/* 80C754EC  80 64 00 04 */	lwz r3, 4(r4)
/* 80C754F0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C754F4  90 65 00 04 */	stw r3, 4(r5)
/* 80C754F8  94 05 00 08 */	stwu r0, 8(r5)
/* 80C754FC  42 00 FF F0 */	bdnz lbl_80C754EC
/* 80C75500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C75504  7C 08 03 A6 */	mtlr r0
/* 80C75508  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7550C  4E 80 00 20 */	blr 
