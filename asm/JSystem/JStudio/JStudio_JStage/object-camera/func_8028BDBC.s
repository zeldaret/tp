lbl_8028BDBC:
/* 8028BDBC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028BDC0  7C 08 02 A6 */	mflr r0
/* 8028BDC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028BDC8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028BDCC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8028BDD0  7C 7E 1B 78 */	mr r30, r3
/* 8028BDD4  7C 9F 23 78 */	mr r31, r4
/* 8028BDD8  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BDDC  3C A0 80 3A */	lis r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio15TAdaptor_camera@ha
/* 8028BDE0  38 A5 AA A8 */	addi r5, r5, sauVariableValue_3_POSITION_XYZ__Q27JStudio15TAdaptor_camera@l
/* 8028BDE4  4B FF A4 91 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028BDE8  88 1E 01 14 */	lbz r0, 0x114(r30)
/* 8028BDEC  28 00 00 00 */	cmplwi r0, 0
/* 8028BDF0  40 82 00 34 */	bne lbl_8028BE24
/* 8028BDF4  88 1F 00 88 */	lbz r0, 0x88(r31)
/* 8028BDF8  28 00 00 00 */	cmplwi r0, 0
/* 8028BDFC  40 82 00 0C */	bne lbl_8028BE08
/* 8028BE00  38 01 00 14 */	addi r0, r1, 0x14
/* 8028BE04  48 00 00 18 */	b lbl_8028BE1C
lbl_8028BE08:
/* 8028BE08  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028BE0C  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BE10  38 A1 00 08 */	addi r5, r1, 8
/* 8028BE14  48 0B AF 59 */	bl PSMTXMultVec
/* 8028BE18  38 01 00 08 */	addi r0, r1, 8
lbl_8028BE1C:
/* 8028BE1C  7C 04 03 78 */	mr r4, r0
/* 8028BE20  48 00 00 6C */	b lbl_8028BE8C
lbl_8028BE24:
/* 8028BE24  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BE28  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 8028BE2C  2C 00 00 01 */	cmpwi r0, 1
/* 8028BE30  41 82 00 5C */	beq lbl_8028BE8C
/* 8028BE34  40 80 00 58 */	bge lbl_8028BE8C
/* 8028BE38  2C 00 00 00 */	cmpwi r0, 0
/* 8028BE3C  40 80 00 08 */	bge lbl_8028BE44
/* 8028BE40  48 00 00 4C */	b lbl_8028BE8C
lbl_8028BE44:
/* 8028BE44  38 61 00 20 */	addi r3, r1, 0x20
/* 8028BE48  80 BE 01 0C */	lwz r5, 0x10c(r30)
/* 8028BE4C  80 DE 01 10 */	lwz r6, 0x110(r30)
/* 8028BE50  4B FF E4 41 */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 8028BE54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028BE58  40 82 00 0C */	bne lbl_8028BE64
/* 8028BE5C  38 00 00 00 */	li r0, 0
/* 8028BE60  48 00 00 20 */	b lbl_8028BE80
lbl_8028BE64:
/* 8028BE64  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8028BE68  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028BE6C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8028BE70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028BE74  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8028BE78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028BE7C  38 00 00 01 */	li r0, 1
lbl_8028BE80:
/* 8028BE80  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028BE84  41 82 00 1C */	beq lbl_8028BEA0
/* 8028BE88  38 81 00 08 */	addi r4, r1, 8
lbl_8028BE8C:
/* 8028BE8C  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8028BE90  81 83 00 00 */	lwz r12, 0(r3)
/* 8028BE94  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 8028BE98  7D 89 03 A6 */	mtctr r12
/* 8028BE9C  4E 80 04 21 */	bctrl 
lbl_8028BEA0:
/* 8028BEA0  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028BEA4  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8028BEA8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028BEAC  7C 08 03 A6 */	mtlr r0
/* 8028BEB0  38 21 00 60 */	addi r1, r1, 0x60
/* 8028BEB4  4E 80 00 20 */	blr 
