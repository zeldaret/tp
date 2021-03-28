lbl_803157A0:
/* 803157A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803157A4  7C 08 02 A6 */	mflr r0
/* 803157A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803157AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803157B0  93 C1 00 08 */	stw r30, 8(r1)
/* 803157B4  38 A0 00 00 */	li r5, 0
/* 803157B8  2C 03 00 00 */	cmpwi r3, 0
/* 803157BC  41 82 00 2C */	beq lbl_803157E8
/* 803157C0  40 80 00 18 */	bge lbl_803157D8
/* 803157C4  3C 80 80 00 */	lis r4, 0x8000 /* 0x80000001@ha */
/* 803157C8  38 04 00 01 */	addi r0, r4, 0x0001 /* 0x80000001@l */
/* 803157CC  7C 03 00 00 */	cmpw r3, r0
/* 803157D0  40 80 01 B4 */	bge lbl_80315984
/* 803157D4  48 00 01 10 */	b lbl_803158E4
lbl_803157D8:
/* 803157D8  3C 00 40 00 */	lis r0, 0x4000
/* 803157DC  7C 03 00 00 */	cmpw r3, r0
/* 803157E0  41 82 00 78 */	beq lbl_80315858
/* 803157E4  48 00 01 A0 */	b lbl_80315984
lbl_803157E8:
/* 803157E8  38 60 00 20 */	li r3, 0x20
/* 803157EC  4B FB 94 61 */	bl __nw__FUl
/* 803157F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 803157F4  41 82 00 5C */	beq lbl_80315850
/* 803157F8  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha
/* 803157FC  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l
/* 80315800  90 1F 00 00 */	stw r0, 0(r31)
/* 80315804  3C 60 80 3D */	lis r3, __vt__21J3DColorBlockLightOff@ha
/* 80315808  38 03 EA 34 */	addi r0, r3, __vt__21J3DColorBlockLightOff@l
/* 8031580C  90 1F 00 00 */	stw r0, 0(r31)
/* 80315810  38 7F 00 04 */	addi r3, r31, 4
/* 80315814  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315818  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 8031581C  38 A0 00 00 */	li r5, 0
/* 80315820  38 C0 00 04 */	li r6, 4
/* 80315824  38 E0 00 02 */	li r7, 2
/* 80315828  48 04 C5 39 */	bl __construct_array
/* 8031582C  38 7F 00 0E */	addi r3, r31, 0xe
/* 80315830  3C 80 80 01 */	lis r4, __ct__12J3DColorChanFv@ha
/* 80315834  38 84 E4 7C */	addi r4, r4, __ct__12J3DColorChanFv@l
/* 80315838  38 A0 00 00 */	li r5, 0
/* 8031583C  38 C0 00 02 */	li r6, 2
/* 80315840  38 E0 00 04 */	li r7, 4
/* 80315844  48 04 C5 1D */	bl __construct_array
/* 80315848  7F E3 FB 78 */	mr r3, r31
/* 8031584C  48 00 1C 31 */	bl initialize__21J3DColorBlockLightOffFv
lbl_80315850:
/* 80315850  7F E5 FB 78 */	mr r5, r31
/* 80315854  48 00 01 30 */	b lbl_80315984
lbl_80315858:
/* 80315858  38 60 00 4C */	li r3, 0x4c
/* 8031585C  4B FB 93 F1 */	bl __nw__FUl
/* 80315860  7C 7F 1B 79 */	or. r31, r3, r3
/* 80315864  41 82 00 78 */	beq lbl_803158DC
/* 80315868  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha
/* 8031586C  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l
/* 80315870  90 1F 00 00 */	stw r0, 0(r31)
/* 80315874  3C 60 80 3D */	lis r3, __vt__20J3DColorBlockLightOn@ha
/* 80315878  38 03 E6 78 */	addi r0, r3, __vt__20J3DColorBlockLightOn@l
/* 8031587C  90 1F 00 00 */	stw r0, 0(r31)
/* 80315880  38 7F 00 04 */	addi r3, r31, 4
/* 80315884  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315888  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 8031588C  38 A0 00 00 */	li r5, 0
/* 80315890  38 C0 00 04 */	li r6, 4
/* 80315894  38 E0 00 02 */	li r7, 2
/* 80315898  48 04 C4 C9 */	bl __construct_array
/* 8031589C  38 7F 00 0C */	addi r3, r31, 0xc
/* 803158A0  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 803158A4  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 803158A8  38 A0 00 00 */	li r5, 0
/* 803158AC  38 C0 00 04 */	li r6, 4
/* 803158B0  38 E0 00 02 */	li r7, 2
/* 803158B4  48 04 C4 AD */	bl __construct_array
/* 803158B8  38 7F 00 16 */	addi r3, r31, 0x16
/* 803158BC  3C 80 80 01 */	lis r4, __ct__12J3DColorChanFv@ha
/* 803158C0  38 84 E4 7C */	addi r4, r4, __ct__12J3DColorChanFv@l
/* 803158C4  38 A0 00 00 */	li r5, 0
/* 803158C8  38 C0 00 02 */	li r6, 2
/* 803158CC  38 E0 00 04 */	li r7, 4
/* 803158D0  48 04 C4 91 */	bl __construct_array
/* 803158D4  7F E3 FB 78 */	mr r3, r31
/* 803158D8  48 00 1C A9 */	bl initialize__20J3DColorBlockLightOnFv
lbl_803158DC:
/* 803158DC  7F E5 FB 78 */	mr r5, r31
/* 803158E0  48 00 00 A4 */	b lbl_80315984
lbl_803158E4:
/* 803158E4  38 60 00 28 */	li r3, 0x28
/* 803158E8  4B FB 93 65 */	bl __nw__FUl
/* 803158EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803158F0  41 82 00 90 */	beq lbl_80315980
/* 803158F4  7F FE FB 78 */	mr r30, r31
/* 803158F8  3C 60 80 3D */	lis r3, __vt__13J3DColorBlock@ha
/* 803158FC  38 03 DE A0 */	addi r0, r3, __vt__13J3DColorBlock@l
/* 80315900  90 1F 00 00 */	stw r0, 0(r31)
/* 80315904  3C 60 80 3D */	lis r3, __vt__21J3DColorBlockLightOff@ha
/* 80315908  38 03 EA 34 */	addi r0, r3, __vt__21J3DColorBlockLightOff@l
/* 8031590C  90 1F 00 00 */	stw r0, 0(r31)
/* 80315910  38 7F 00 04 */	addi r3, r31, 4
/* 80315914  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315918  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 8031591C  38 A0 00 00 */	li r5, 0
/* 80315920  38 C0 00 04 */	li r6, 4
/* 80315924  38 E0 00 02 */	li r7, 2
/* 80315928  48 04 C4 39 */	bl __construct_array
/* 8031592C  38 7F 00 0E */	addi r3, r31, 0xe
/* 80315930  3C 80 80 01 */	lis r4, __ct__12J3DColorChanFv@ha
/* 80315934  38 84 E4 7C */	addi r4, r4, __ct__12J3DColorChanFv@l
/* 80315938  38 A0 00 00 */	li r5, 0
/* 8031593C  38 C0 00 02 */	li r6, 2
/* 80315940  38 E0 00 04 */	li r7, 4
/* 80315944  48 04 C4 1D */	bl __construct_array
/* 80315948  7F E3 FB 78 */	mr r3, r31
/* 8031594C  48 00 1B 31 */	bl initialize__21J3DColorBlockLightOffFv
/* 80315950  3C 60 80 3D */	lis r3, __vt__22J3DColorBlockAmbientOn@ha
/* 80315954  38 03 E7 08 */	addi r0, r3, __vt__22J3DColorBlockAmbientOn@l
/* 80315958  90 1E 00 00 */	stw r0, 0(r30)
/* 8031595C  38 7E 00 20 */	addi r3, r30, 0x20
/* 80315960  3C 80 80 01 */	lis r4, __ct__10J3DGXColorFv@ha
/* 80315964  38 84 E5 38 */	addi r4, r4, __ct__10J3DGXColorFv@l
/* 80315968  38 A0 00 00 */	li r5, 0
/* 8031596C  38 C0 00 04 */	li r6, 4
/* 80315970  38 E0 00 02 */	li r7, 2
/* 80315974  48 04 C3 ED */	bl __construct_array
/* 80315978  7F C3 F3 78 */	mr r3, r30
/* 8031597C  48 00 1B 61 */	bl initialize__22J3DColorBlockAmbientOnFv
lbl_80315980:
/* 80315980  7F E5 FB 78 */	mr r5, r31
lbl_80315984:
/* 80315984  7C A3 2B 78 */	mr r3, r5
/* 80315988  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031598C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80315990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315994  7C 08 03 A6 */	mtlr r0
/* 80315998  38 21 00 10 */	addi r1, r1, 0x10
/* 8031599C  4E 80 00 20 */	blr 
