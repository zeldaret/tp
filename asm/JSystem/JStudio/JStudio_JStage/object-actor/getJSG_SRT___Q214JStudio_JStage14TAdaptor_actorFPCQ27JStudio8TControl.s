lbl_8028AECC:
/* 8028AECC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028AED0  7C 08 02 A6 */	mflr r0
/* 8028AED4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028AED8  39 61 00 90 */	addi r11, r1, 0x90
/* 8028AEDC  48 0D 73 01 */	bl _savegpr_29
/* 8028AEE0  7C 7D 1B 78 */	mr r29, r3
/* 8028AEE4  7C 9E 23 78 */	mr r30, r4
/* 8028AEE8  83 E3 01 2C */	lwz r31, 0x12c(r3)
/* 8028AEEC  7F E3 FB 78 */	mr r3, r31
/* 8028AEF0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8028AEF4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AEF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8028AEFC  7D 89 03 A6 */	mtctr r12
/* 8028AF00  4E 80 04 21 */	bctrl 
/* 8028AF04  7F E3 FB 78 */	mr r3, r31
/* 8028AF08  38 81 00 68 */	addi r4, r1, 0x68
/* 8028AF0C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AF10  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8028AF14  7D 89 03 A6 */	mtctr r12
/* 8028AF18  4E 80 04 21 */	bctrl 
/* 8028AF1C  7F E3 FB 78 */	mr r3, r31
/* 8028AF20  38 81 00 74 */	addi r4, r1, 0x74
/* 8028AF24  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AF28  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 8028AF2C  7D 89 03 A6 */	mtctr r12
/* 8028AF30  4E 80 04 21 */	bctrl 
/* 8028AF34  88 1D 01 44 */	lbz r0, 0x144(r29)
/* 8028AF38  28 00 00 00 */	cmplwi r0, 0
/* 8028AF3C  40 82 00 6C */	bne lbl_8028AFA8
/* 8028AF40  88 1E 00 89 */	lbz r0, 0x89(r30)
/* 8028AF44  28 00 00 00 */	cmplwi r0, 0
/* 8028AF48  40 82 00 0C */	bne lbl_8028AF54
/* 8028AF4C  38 01 00 5C */	addi r0, r1, 0x5c
/* 8028AF50  48 00 00 50 */	b lbl_8028AFA0
lbl_8028AF54:
/* 8028AF54  38 7E 00 DC */	addi r3, r30, 0xdc
/* 8028AF58  38 81 00 5C */	addi r4, r1, 0x5c
/* 8028AF5C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8028AF60  48 0B BE 0D */	bl PSMTXMultVec
/* 8028AF64  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8028AF68  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8028AF6C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8028AF70  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 8028AF74  EC 01 00 2A */	fadds f0, f1, f0
/* 8028AF78  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8028AF7C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8028AF80  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8028AF84  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8028AF88  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8028AF8C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8028AF90  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8028AF94  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8028AF98  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8028AF9C  38 01 00 38 */	addi r0, r1, 0x38
lbl_8028AFA0:
/* 8028AFA0  7C 1F 03 78 */	mr r31, r0
/* 8028AFA4  48 00 00 6C */	b lbl_8028B010
lbl_8028AFA8:
/* 8028AFA8  3B E1 00 5C */	addi r31, r1, 0x5c
/* 8028AFAC  80 1D 01 38 */	lwz r0, 0x138(r29)
/* 8028AFB0  2C 00 00 01 */	cmpwi r0, 1
/* 8028AFB4  41 82 00 5C */	beq lbl_8028B010
/* 8028AFB8  40 80 00 58 */	bge lbl_8028B010
/* 8028AFBC  2C 00 00 00 */	cmpwi r0, 0
/* 8028AFC0  40 80 00 08 */	bge lbl_8028AFC8
/* 8028AFC4  48 00 00 4C */	b lbl_8028B010
lbl_8028AFC8:
/* 8028AFC8  38 61 00 08 */	addi r3, r1, 8
/* 8028AFCC  7F E4 FB 78 */	mr r4, r31
/* 8028AFD0  80 BD 01 3C */	lwz r5, 0x13c(r29)
/* 8028AFD4  80 DD 01 40 */	lwz r6, 0x140(r29)
/* 8028AFD8  4B FF F3 51 */	bl transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl
/* 8028AFDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028AFE0  40 82 00 0C */	bne lbl_8028AFEC
/* 8028AFE4  38 00 00 00 */	li r0, 0
/* 8028AFE8  48 00 00 1C */	b lbl_8028B004
lbl_8028AFEC:
/* 8028AFEC  38 61 00 50 */	addi r3, r1, 0x50
/* 8028AFF0  38 81 00 44 */	addi r4, r1, 0x44
/* 8028AFF4  38 A1 00 38 */	addi r5, r1, 0x38
/* 8028AFF8  38 C1 00 08 */	addi r6, r1, 8
/* 8028AFFC  4B FF AB D1 */	bl getFromTransformation_SRxyzT__Q27JStudio4mathFP3VecP3VecP3VecPA4_Cf
/* 8028B000  38 00 00 01 */	li r0, 1
lbl_8028B004:
/* 8028B004  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028B008  41 82 00 44 */	beq lbl_8028B04C
/* 8028B00C  3B E1 00 38 */	addi r31, r1, 0x38
lbl_8028B010:
/* 8028B010  7F A3 EB 78 */	mr r3, r29
/* 8028B014  3C 80 80 3A */	lis r4, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA68@ha */
/* 8028B018  38 84 AA 68 */	addi r4, r4, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA68@l */
/* 8028B01C  7F E5 FB 78 */	mr r5, r31
/* 8028B020  4B FF B1 E5 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028B024  7F A3 EB 78 */	mr r3, r29
/* 8028B028  3C 80 80 3A */	lis r4, sauVariableValue_3_ROTATION_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA74@ha */
/* 8028B02C  38 84 AA 74 */	addi r4, r4, sauVariableValue_3_ROTATION_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA74@l */
/* 8028B030  38 BF 00 0C */	addi r5, r31, 0xc
/* 8028B034  4B FF B1 D1 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
/* 8028B038  7F A3 EB 78 */	mr r3, r29
/* 8028B03C  3C 80 80 3A */	lis r4, sauVariableValue_3_SCALING_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA80@ha */
/* 8028B040  38 84 AA 80 */	addi r4, r4, sauVariableValue_3_SCALING_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA80@l */
/* 8028B044  38 BF 00 18 */	addi r5, r31, 0x18
/* 8028B048  4B FF B1 BD */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
lbl_8028B04C:
/* 8028B04C  39 61 00 90 */	addi r11, r1, 0x90
/* 8028B050  48 0D 71 D9 */	bl _restgpr_29
/* 8028B054  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028B058  7C 08 03 A6 */	mtlr r0
/* 8028B05C  38 21 00 90 */	addi r1, r1, 0x90
/* 8028B060  4E 80 00 20 */	blr 
