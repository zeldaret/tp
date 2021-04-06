lbl_8029FB30:
/* 8029FB30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029FB34  7C 08 02 A6 */	mflr r0
/* 8029FB38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029FB3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029FB40  48 0C 26 99 */	bl _savegpr_28
/* 8029FB44  7C 7C 1B 78 */	mr r28, r3
/* 8029FB48  83 C3 00 58 */	lwz r30, 0x58(r3)
/* 8029FB4C  3C 60 80 3D */	lis r3, __vt__5JAISe@ha /* 0x803C9858@ha */
/* 8029FB50  38 63 98 58 */	addi r3, r3, __vt__5JAISe@l /* 0x803C9858@l */
/* 8029FB54  3B A3 00 08 */	addi r29, r3, 8
/* 8029FB58  48 00 00 BC */	b lbl_8029FC14
lbl_8029FB5C:
/* 8029FB5C  83 FE 00 0C */	lwz r31, 0xc(r30)
/* 8029FB60  80 7E 00 00 */	lwz r3, 0(r30)
/* 8029FB64  88 03 00 2E */	lbz r0, 0x2e(r3)
/* 8029FB68  28 00 00 06 */	cmplwi r0, 6
/* 8029FB6C  40 82 00 A4 */	bne lbl_8029FC10
/* 8029FB70  38 7C 00 58 */	addi r3, r28, 0x58
/* 8029FB74  7F C4 F3 78 */	mr r4, r30
/* 8029FB78  48 03 C5 E5 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8029FB7C  83 DE 00 00 */	lwz r30, 0(r30)
/* 8029FB80  28 1E 00 00 */	cmplwi r30, 0
/* 8029FB84  41 82 00 8C */	beq lbl_8029FC10
/* 8029FB88  3C 60 80 3D */	lis r3, __vt__5JAISe@ha /* 0x803C9858@ha */
/* 8029FB8C  38 03 98 58 */	addi r0, r3, __vt__5JAISe@l /* 0x803C9858@l */
/* 8029FB90  90 1E 00 A8 */	stw r0, 0xa8(r30)
/* 8029FB94  93 BE 00 10 */	stw r29, 0x10(r30)
/* 8029FB98  34 1E 00 AC */	addic. r0, r30, 0xac
/* 8029FB9C  41 82 00 10 */	beq lbl_8029FBAC
/* 8029FBA0  38 7E 00 C8 */	addi r3, r30, 0xc8
/* 8029FBA4  38 80 FF FF */	li r4, -1
/* 8029FBA8  4B FF 17 75 */	bl __dt__8JASTrackFv
lbl_8029FBAC:
/* 8029FBAC  28 1E 00 00 */	cmplwi r30, 0
/* 8029FBB0  41 82 00 10 */	beq lbl_8029FBC0
/* 8029FBB4  7F C3 F3 78 */	mr r3, r30
/* 8029FBB8  38 80 00 00 */	li r4, 0
/* 8029FBBC  48 03 C2 59 */	bl __dt__10JSUPtrLinkFv
lbl_8029FBC0:
/* 8029FBC0  88 0D 8D 90 */	lbz r0, data_80451310(r13)
/* 8029FBC4  7C 00 07 75 */	extsb. r0, r0
/* 8029FBC8  40 82 00 34 */	bne lbl_8029FBFC
/* 8029FBCC  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 8029FBD0  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 8029FBD4  4B FF 0C 75 */	bl __ct__17JASGenericMemPoolFv
/* 8029FBD8  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 8029FBDC  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 8029FBE0  3C 80 80 2A */	lis r4, func_8029FC34@ha /* 0x8029FC34@ha */
/* 8029FBE4  38 84 FC 34 */	addi r4, r4, func_8029FC34@l /* 0x8029FC34@l */
/* 8029FBE8  3C A0 80 43 */	lis r5, lit_744@ha /* 0x80434078@ha */
/* 8029FBEC  38 A5 40 78 */	addi r5, r5, lit_744@l /* 0x80434078@l */
/* 8029FBF0  48 0C 20 35 */	bl __register_global_object
/* 8029FBF4  38 00 00 01 */	li r0, 1
/* 8029FBF8  98 0D 8D 90 */	stb r0, data_80451310(r13)
lbl_8029FBFC:
/* 8029FBFC  3C 60 80 43 */	lis r3, data_80434084@ha /* 0x80434084@ha */
/* 8029FC00  38 63 40 84 */	addi r3, r3, data_80434084@l /* 0x80434084@l */
/* 8029FC04  7F C4 F3 78 */	mr r4, r30
/* 8029FC08  38 A0 03 38 */	li r5, 0x338
/* 8029FC0C  4B FF 0D 89 */	bl free__17JASGenericMemPoolFPvUl
lbl_8029FC10:
/* 8029FC10  7F FE FB 78 */	mr r30, r31
lbl_8029FC14:
/* 8029FC14  28 1E 00 00 */	cmplwi r30, 0
/* 8029FC18  40 82 FF 44 */	bne lbl_8029FB5C
/* 8029FC1C  39 61 00 20 */	addi r11, r1, 0x20
/* 8029FC20  48 0C 26 05 */	bl _restgpr_28
/* 8029FC24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029FC28  7C 08 03 A6 */	mtlr r0
/* 8029FC2C  38 21 00 20 */	addi r1, r1, 0x20
/* 8029FC30  4E 80 00 20 */	blr 
