lbl_80229A28:
/* 80229A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80229A2C  7C 08 02 A6 */	mflr r0
/* 80229A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80229A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80229A38  93 C1 00 08 */	stw r30, 8(r1)
/* 80229A3C  7C 7E 1B 78 */	mr r30, r3
/* 80229A40  48 07 F0 45 */	bl __ct__Q28JMessage19TRenderingProcessorFPCQ28JMessage10TReference
/* 80229A44  3C 60 80 3C */	lis r3, __vt__26jmessage_tMeasureProcessor@ha /* 0x803C0A94@ha */
/* 80229A48  38 03 0A 94 */	addi r0, r3, __vt__26jmessage_tMeasureProcessor@l /* 0x803C0A94@l */
/* 80229A4C  90 1E 00 00 */	stw r0, 0(r30)
/* 80229A50  83 FE 00 04 */	lwz r31, 4(r30)
/* 80229A54  7F E3 FB 78 */	mr r3, r31
/* 80229A58  4B FF FD 59 */	bl resetCharactor__19jmessage_tReferenceFv
/* 80229A5C  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 80229A60  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80229A64  38 00 00 00 */	li r0, 0
/* 80229A68  B0 1E 00 3C */	sth r0, 0x3c(r30)
/* 80229A6C  B0 1E 00 3E */	sth r0, 0x3e(r30)
/* 80229A70  B0 1E 00 40 */	sth r0, 0x40(r30)
/* 80229A74  98 1E 00 48 */	stb r0, 0x48(r30)
/* 80229A78  98 1E 00 44 */	stb r0, 0x44(r30)
/* 80229A7C  98 1E 00 45 */	stb r0, 0x45(r30)
/* 80229A80  98 1E 00 46 */	stb r0, 0x46(r30)
/* 80229A84  98 1E 00 47 */	stb r0, 0x47(r30)
/* 80229A88  98 1E 00 49 */	stb r0, 0x49(r30)
/* 80229A8C  7F E3 FB 78 */	mr r3, r31
/* 80229A90  4B FF F3 51 */	bl getLineMax__19jmessage_tReferenceFv
/* 80229A94  98 7E 00 4A */	stb r3, 0x4a(r30)
/* 80229A98  38 00 00 00 */	li r0, 0
/* 80229A9C  98 1E 00 4B */	stb r0, 0x4b(r30)
/* 80229AA0  98 1E 00 4C */	stb r0, 0x4c(r30)
/* 80229AA4  98 1E 00 4D */	stb r0, 0x4d(r30)
/* 80229AA8  7F C3 F3 78 */	mr r3, r30
/* 80229AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80229AB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80229AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80229AB8  7C 08 03 A6 */	mtlr r0
/* 80229ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80229AC0  4E 80 00 20 */	blr 
