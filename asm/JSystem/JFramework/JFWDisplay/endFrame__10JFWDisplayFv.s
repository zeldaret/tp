lbl_80272AB0:
/* 80272AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272AB4  7C 08 02 A6 */	mflr r0
/* 80272AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80272AC0  93 C1 00 08 */	stw r30, 8(r1)
/* 80272AC4  7C 7F 1B 78 */	mr r31, r3
/* 80272AC8  83 CD 8F D8 */	lwz r30, sManager__10JUTProcBar(r13)
/* 80272ACC  48 0C FC 49 */	bl OSGetTick
/* 80272AD0  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80272AD4  7C 00 18 50 */	subf r0, r0, r3
/* 80272AD8  54 05 18 38 */	slwi r5, r0, 3
/* 80272ADC  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80272AE0  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80272AE4  54 04 F0 BE */	srwi r4, r0, 2
/* 80272AE8  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001E848@ha */
/* 80272AEC  38 03 E8 48 */	addi r0, r3, 0xE848 /* 0x0001E848@l */
/* 80272AF0  7C 04 03 96 */	divwu r0, r4, r0
/* 80272AF4  7C 05 03 96 */	divwu r0, r5, r0
/* 80272AF8  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 80272AFC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80272B00  28 00 00 00 */	cmplwi r0, 0
/* 80272B04  40 82 00 0C */	bne lbl_80272B10
/* 80272B08  38 00 00 01 */	li r0, 1
/* 80272B0C  90 1E 00 2C */	stw r0, 0x2c(r30)
lbl_80272B10:
/* 80272B10  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 80272B14  28 00 00 00 */	cmplwi r0, 0
/* 80272B18  41 82 00 F0 */	beq lbl_80272C08
/* 80272B1C  83 CD 8F D8 */	lwz r30, sManager__10JUTProcBar(r13)
/* 80272B20  38 00 00 FF */	li r0, 0xff
/* 80272B24  98 1E 00 4C */	stb r0, 0x4c(r30)
/* 80272B28  38 00 00 81 */	li r0, 0x81
/* 80272B2C  98 1E 00 4D */	stb r0, 0x4d(r30)
/* 80272B30  38 00 00 1E */	li r0, 0x1e
/* 80272B34  98 1E 00 4E */	stb r0, 0x4e(r30)
/* 80272B38  48 0C FB DD */	bl OSGetTick
/* 80272B3C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80272B40  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 80272B44  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80272B48  2C 00 00 02 */	cmpwi r0, 2
/* 80272B4C  41 82 00 18 */	beq lbl_80272B64
/* 80272B50  40 80 00 08 */	bge lbl_80272B58
/* 80272B54  48 00 00 24 */	b lbl_80272B78
lbl_80272B58:
/* 80272B58  2C 00 00 04 */	cmpwi r0, 4
/* 80272B5C  40 80 00 1C */	bge lbl_80272B78
/* 80272B60  48 00 00 10 */	b lbl_80272B70
lbl_80272B64:
/* 80272B64  48 00 08 45 */	bl JFWDrawDoneAlarm__Fv
/* 80272B68  48 0E 93 65 */	bl GXFlush
/* 80272B6C  48 00 00 0C */	b lbl_80272B78
lbl_80272B70:
/* 80272B70  48 00 08 39 */	bl JFWDrawDoneAlarm__Fv
/* 80272B74  48 0E 93 59 */	bl GXFlush
lbl_80272B78:
/* 80272B78  83 CD 8F D8 */	lwz r30, sManager__10JUTProcBar(r13)
/* 80272B7C  48 0C FB 99 */	bl OSGetTick
/* 80272B80  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80272B84  7C 00 18 50 */	subf r0, r0, r3
/* 80272B88  54 05 18 38 */	slwi r5, r0, 3
/* 80272B8C  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80272B90  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80272B94  54 04 F0 BE */	srwi r4, r0, 2
/* 80272B98  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001E848@ha */
/* 80272B9C  38 03 E8 48 */	addi r0, r3, 0xE848 /* 0x0001E848@l */
/* 80272BA0  7C 04 03 96 */	divwu r0, r4, r0
/* 80272BA4  7C 05 03 96 */	divwu r0, r5, r0
/* 80272BA8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 80272BAC  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80272BB0  28 00 00 00 */	cmplwi r0, 0
/* 80272BB4  40 82 00 0C */	bne lbl_80272BC0
/* 80272BB8  38 00 00 01 */	li r0, 1
/* 80272BBC  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_80272BC0:
/* 80272BC0  83 CD 8F D8 */	lwz r30, sManager__10JUTProcBar(r13)
/* 80272BC4  48 0C FB 51 */	bl OSGetTick
/* 80272BC8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80272BCC  7C 00 18 50 */	subf r0, r0, r3
/* 80272BD0  54 05 18 38 */	slwi r5, r0, 3
/* 80272BD4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 80272BD8  80 03 00 F8 */	lwz r0, 0x00F8(r3)  /* 0x800000F8@l */
/* 80272BDC  54 04 F0 BE */	srwi r4, r0, 2
/* 80272BE0  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001E848@ha */
/* 80272BE4  38 03 E8 48 */	addi r0, r3, 0xE848 /* 0x0001E848@l */
/* 80272BE8  7C 04 03 96 */	divwu r0, r4, r0
/* 80272BEC  7C 05 03 96 */	divwu r0, r5, r0
/* 80272BF0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80272BF4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80272BF8  28 00 00 00 */	cmplwi r0, 0
/* 80272BFC  40 82 00 0C */	bne lbl_80272C08
/* 80272C00  38 00 00 01 */	li r0, 1
/* 80272C04  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80272C08:
/* 80272C08  88 1F 00 40 */	lbz r0, 0x40(r31)
/* 80272C0C  28 00 00 00 */	cmplwi r0, 0
/* 80272C10  41 82 00 38 */	beq lbl_80272C48
/* 80272C14  88 0D 8C 48 */	lbz r0, data_804511C8(r13)
/* 80272C18  7C 00 07 75 */	extsb. r0, r0
/* 80272C1C  40 82 00 14 */	bne lbl_80272C30
/* 80272C20  48 0D AC 9D */	bl VIGetRetraceCount
/* 80272C24  90 6D 8C 44 */	stw r3, prevFrame(r13)
/* 80272C28  38 00 00 01 */	li r0, 1
/* 80272C2C  98 0D 8C 48 */	stb r0, data_804511C8(r13)
lbl_80272C30:
/* 80272C30  48 0D AC 8D */	bl VIGetRetraceCount
/* 80272C34  80 0D 8C 44 */	lwz r0, prevFrame(r13)
/* 80272C38  7C 00 18 50 */	subf r0, r0, r3
/* 80272C3C  80 8D 8F D8 */	lwz r4, sManager__10JUTProcBar(r13)
/* 80272C40  90 04 01 04 */	stw r0, 0x104(r4)
/* 80272C44  90 6D 8C 44 */	stw r3, prevFrame(r13)
lbl_80272C48:
/* 80272C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80272C4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80272C50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272C54  7C 08 03 A6 */	mtlr r0
/* 80272C58  38 21 00 10 */	addi r1, r1, 0x10
/* 80272C5C  4E 80 00 20 */	blr 
