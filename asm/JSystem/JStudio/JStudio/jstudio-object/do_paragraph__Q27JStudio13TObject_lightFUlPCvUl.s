lbl_802873A4:
/* 802873A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802873A8  7C 08 02 A6 */	mflr r0
/* 802873AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802873B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802873B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802873B8  7C A8 2B 78 */	mr r8, r5
/* 802873BC  7C C9 33 78 */	mr r9, r6
/* 802873C0  3C E0 80 3A */	lis r7, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@ha
/* 802873C4  39 67 AA 68 */	addi r11, r7, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@l
/* 802873C8  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 802873CC  28 1F 00 00 */	cmplwi r31, 0
/* 802873D0  41 82 01 F8 */	beq lbl_802875C8
/* 802873D4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802873D8  54 8C D9 7E */	srwi r12, r4, 5
/* 802873DC  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 802873E0  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 802873E4  39 43 21 80 */	addi r10, r3, __ptmf_null@l
/* 802873E8  80 8A 00 00 */	lwz r4, 0(r10)
/* 802873EC  80 6A 00 04 */	lwz r3, 4(r10)
/* 802873F0  90 81 00 08 */	stw r4, 8(r1)
/* 802873F4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802873F8  80 6A 00 08 */	lwz r3, 8(r10)
/* 802873FC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287400  38 8C FF EB */	addi r4, r12, -21
/* 80287404  28 04 00 22 */	cmplwi r4, 0x22
/* 80287408  41 81 01 C0 */	bgt lbl_802875C8
/* 8028740C  3C 60 80 3C */	lis r3, lit_1613@ha
/* 80287410  38 63 4F 4C */	addi r3, r3, lit_1613@l
/* 80287414  54 84 10 3A */	slwi r4, r4, 2
/* 80287418  7C 63 20 2E */	lwzx r3, r3, r4
/* 8028741C  7C 69 03 A6 */	mtctr r3
/* 80287420  4E 80 04 20 */	bctr 
/* 80287424  3C 60 80 3C */	lis r3, lit_1570@ha
/* 80287428  38 A3 4F 34 */	addi r5, r3, lit_1570@l
/* 8028742C  80 85 00 00 */	lwz r4, 0(r5)
/* 80287430  80 65 00 04 */	lwz r3, 4(r5)
/* 80287434  90 81 00 08 */	stw r4, 8(r1)
/* 80287438  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028743C  80 65 00 08 */	lwz r3, 8(r5)
/* 80287440  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287444  3C 60 80 43 */	lis r3, data_8043108C@ha
/* 80287448  38 63 10 8C */	addi r3, r3, data_8043108C@l
/* 8028744C  7C 7E 1B 78 */	mr r30, r3
/* 80287450  48 00 00 C8 */	b lbl_80287518
/* 80287454  3C 60 80 3C */	lis r3, lit_1573@ha
/* 80287458  38 83 4F 40 */	addi r4, r3, lit_1573@l
/* 8028745C  80 64 00 00 */	lwz r3, 0(r4)
/* 80287460  80 04 00 04 */	lwz r0, 4(r4)
/* 80287464  90 61 00 08 */	stw r3, 8(r1)
/* 80287468  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028746C  80 04 00 08 */	lwz r0, 8(r4)
/* 80287470  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287474  48 00 01 40 */	b lbl_802875B4
/* 80287478  38 A0 00 00 */	li r5, 0
/* 8028747C  48 00 01 0C */	b lbl_80287588
/* 80287480  38 A0 00 01 */	li r5, 1
/* 80287484  48 00 01 04 */	b lbl_80287588
/* 80287488  38 A0 00 02 */	li r5, 2
/* 8028748C  48 00 00 FC */	b lbl_80287588
/* 80287490  38 A0 00 03 */	li r5, 3
/* 80287494  48 00 00 F4 */	b lbl_80287588
/* 80287498  38 A0 00 04 */	li r5, 4
/* 8028749C  48 00 00 EC */	b lbl_80287588
/* 802874A0  38 A0 00 05 */	li r5, 5
/* 802874A4  48 00 00 E4 */	b lbl_80287588
/* 802874A8  38 A0 00 06 */	li r5, 6
/* 802874AC  48 00 00 DC */	b lbl_80287588
/* 802874B0  38 A0 00 07 */	li r5, 7
/* 802874B4  48 00 00 D4 */	b lbl_80287588
/* 802874B8  38 A0 00 08 */	li r5, 8
/* 802874BC  48 00 00 CC */	b lbl_80287588
/* 802874C0  38 A0 00 09 */	li r5, 9
/* 802874C4  48 00 00 C4 */	b lbl_80287588
/* 802874C8  38 A0 00 0A */	li r5, 0xa
/* 802874CC  48 00 00 BC */	b lbl_80287588
/* 802874D0  38 A0 00 0B */	li r5, 0xb
/* 802874D4  48 00 00 B4 */	b lbl_80287588
/* 802874D8  38 AB 00 74 */	addi r5, r11, 0x74
/* 802874DC  38 C0 00 03 */	li r6, 3
/* 802874E0  48 00 00 C4 */	b lbl_802875A4
/* 802874E4  38 AB 00 80 */	addi r5, r11, 0x80
/* 802874E8  38 C0 00 04 */	li r6, 4
/* 802874EC  48 00 00 B8 */	b lbl_802875A4
/* 802874F0  38 AB 00 90 */	addi r5, r11, 0x90
/* 802874F4  38 C0 00 03 */	li r6, 3
/* 802874F8  48 00 00 AC */	b lbl_802875A4
/* 802874FC  38 AB 00 9C */	addi r5, r11, 0x9c
/* 80287500  38 C0 00 03 */	li r6, 3
/* 80287504  48 00 00 A0 */	b lbl_802875A4
/* 80287508  38 A2 BA C0 */	la r5, sauVariableValue_2_DIRECTION_THETA_PHI__Q27JStudio14TAdaptor_light(r2) /* 804554C0-_SDA2_BASE_ */
/* 8028750C  38 C0 00 02 */	li r6, 2
/* 80287510  48 00 00 94 */	b lbl_802875A4
/* 80287514  48 00 00 B4 */	b lbl_802875C8
lbl_80287518:
/* 80287518  2C 07 00 13 */	cmpwi r7, 0x13
/* 8028751C  40 80 00 4C */	bge lbl_80287568
/* 80287520  2C 07 00 10 */	cmpwi r7, 0x10
/* 80287524  40 80 00 08 */	bge lbl_8028752C
/* 80287528  48 00 00 40 */	b lbl_80287568
lbl_8028752C:
/* 8028752C  7F E3 FB 78 */	mr r3, r31
/* 80287530  7C 04 03 78 */	mr r4, r0
/* 80287534  38 A0 00 0C */	li r5, 0xc
/* 80287538  7C E6 3B 78 */	mr r6, r7
/* 8028753C  7D 07 43 78 */	mr r7, r8
/* 80287540  7D 28 4B 78 */	mr r8, r9
/* 80287544  4B FF EA E9 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 80287548  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028754C  28 1E 00 00 */	cmplwi r30, 0
/* 80287550  41 82 00 0C */	beq lbl_8028755C
/* 80287554  7F C0 F3 78 */	mr r0, r30
/* 80287558  48 00 00 08 */	b lbl_80287560
lbl_8028755C:
/* 8028755C  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_80287560:
/* 80287560  90 03 01 00 */	stw r0, 0x100(r3)
/* 80287564  48 00 00 64 */	b lbl_802875C8
lbl_80287568:
/* 80287568  7F E3 FB 78 */	mr r3, r31
/* 8028756C  7C E4 3B 78 */	mr r4, r7
/* 80287570  7D 05 43 78 */	mr r5, r8
/* 80287574  7D 26 4B 78 */	mr r6, r9
/* 80287578  39 81 00 08 */	addi r12, r1, 8
/* 8028757C  48 0D AB 09 */	bl __ptmf_scall
/* 80287580  60 00 00 00 */	nop 
/* 80287584  48 00 00 44 */	b lbl_802875C8
lbl_80287588:
/* 80287588  7F E3 FB 78 */	mr r3, r31
/* 8028758C  7C 04 03 78 */	mr r4, r0
/* 80287590  7C E6 3B 78 */	mr r6, r7
/* 80287594  7D 07 43 78 */	mr r7, r8
/* 80287598  7D 28 4B 78 */	mr r8, r9
/* 8028759C  4B FF EA 91 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 802875A0  48 00 00 28 */	b lbl_802875C8
lbl_802875A4:
/* 802875A4  7F E3 FB 78 */	mr r3, r31
/* 802875A8  7C 04 03 78 */	mr r4, r0
/* 802875AC  4B FF EB 21 */	bl adaptor_setVariableValue_n__Q27JStudio8TAdaptorFPQ27JStudio8TControlPCUlUlQ37JStudio4data15TEOperationDataPCvUl
/* 802875B0  48 00 00 18 */	b lbl_802875C8
lbl_802875B4:
/* 802875B4  7F E3 FB 78 */	mr r3, r31
/* 802875B8  7C E4 3B 78 */	mr r4, r7
/* 802875BC  39 81 00 08 */	addi r12, r1, 8
/* 802875C0  48 0D AA C5 */	bl __ptmf_scall
/* 802875C4  60 00 00 00 */	nop 
lbl_802875C8:
/* 802875C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802875CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802875D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802875D4  7C 08 03 A6 */	mtlr r0
/* 802875D8  38 21 00 20 */	addi r1, r1, 0x20
/* 802875DC  4E 80 00 20 */	blr 
