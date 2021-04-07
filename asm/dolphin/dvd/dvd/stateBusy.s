lbl_8034A394:
/* 8034A394  7C 08 02 A6 */	mflr r0
/* 8034A398  3C 80 80 35 */	lis r4, stateBusy@ha /* 0x8034A394@ha */
/* 8034A39C  90 01 00 04 */	stw r0, 4(r1)
/* 8034A3A0  38 04 A3 94 */	addi r0, r4, stateBusy@l /* 0x8034A394@l */
/* 8034A3A4  7C 67 1B 78 */	mr r7, r3
/* 8034A3A8  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034A3AC  90 0D 92 40 */	stw r0, LastState(r13)
/* 8034A3B0  80 03 00 08 */	lwz r0, 8(r3)
/* 8034A3B4  28 00 00 10 */	cmplwi r0, 0x10
/* 8034A3B8  41 81 02 F4 */	bgt lbl_8034A6AC
/* 8034A3BC  3C 60 80 3D */	lis r3, lit_359@ha /* 0x803D15A8@ha */
/* 8034A3C0  38 63 15 A8 */	addi r3, r3, lit_359@l /* 0x803D15A8@l */
/* 8034A3C4  54 00 10 3A */	slwi r0, r0, 2
/* 8034A3C8  7C 03 00 2E */	lwzx r0, r3, r0
/* 8034A3CC  7C 09 03 A6 */	mtctr r0
/* 8034A3D0  4E 80 04 20 */	bctr 
/* 8034A3D4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A3D8  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A3DC  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A3E0  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A3E4  90 05 00 04 */	stw r0, 4(r5)
/* 8034A3E8  38 00 00 20 */	li r0, 0x20
/* 8034A3EC  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A3F0  90 07 00 1C */	stw r0, 0x1c(r7)
/* 8034A3F4  80 67 00 18 */	lwz r3, 0x18(r7)
/* 8034A3F8  4B FF DB 79 */	bl DVDLowReadDiskID
/* 8034A3FC  48 00 02 C8 */	b lbl_8034A6C4
/* 8034A400  80 07 00 14 */	lwz r0, 0x14(r7)
/* 8034A404  28 00 00 00 */	cmplwi r0, 0
/* 8034A408  40 82 00 3C */	bne lbl_8034A444
/* 8034A40C  3C 60 80 45 */	lis r3, DummyCommandBlock@ha /* 0x8044C940@ha */
/* 8034A410  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A414  38 03 C9 40 */	addi r0, r3, DummyCommandBlock@l /* 0x8044C940@l */
/* 8034A418  90 0D 91 F8 */	stw r0, executing(r13)
/* 8034A41C  38 00 00 00 */	li r0, 0
/* 8034A420  90 04 00 0C */	stw r0, 0xc(r4)
/* 8034A424  81 84 00 28 */	lwz r12, 0x28(r4)
/* 8034A428  28 0C 00 00 */	cmplwi r12, 0
/* 8034A42C  41 82 00 10 */	beq lbl_8034A43C
/* 8034A430  7D 88 03 A6 */	mtlr r12
/* 8034A434  38 60 00 00 */	li r3, 0
/* 8034A438  4E 80 00 21 */	blrl 
lbl_8034A43C:
/* 8034A43C  4B FF FC 71 */	bl stateReady
/* 8034A440  48 00 02 84 */	b lbl_8034A6C4
lbl_8034A444:
/* 8034A444  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 8034A448  38 63 60 00 */	addi r3, r3, 0x6000 /* 0xCC006000@l */
/* 8034A44C  80 03 00 04 */	lwz r0, 4(r3)
/* 8034A450  3C 80 00 08 */	lis r4, 8
/* 8034A454  90 03 00 04 */	stw r0, 4(r3)
/* 8034A458  80 67 00 20 */	lwz r3, 0x20(r7)
/* 8034A45C  80 07 00 14 */	lwz r0, 0x14(r7)
/* 8034A460  7C 03 00 50 */	subf r0, r3, r0
/* 8034A464  7C 00 20 40 */	cmplw r0, r4
/* 8034A468  40 81 00 08 */	ble lbl_8034A470
/* 8034A46C  48 00 00 08 */	b lbl_8034A474
lbl_8034A470:
/* 8034A470  7C 04 03 78 */	mr r4, r0
lbl_8034A474:
/* 8034A474  90 87 00 1C */	stw r4, 0x1c(r7)
/* 8034A478  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A47C  38 C3 A6 D4 */	addi r6, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A480  80 A7 00 20 */	lwz r5, 0x20(r7)
/* 8034A484  80 67 00 18 */	lwz r3, 0x18(r7)
/* 8034A488  80 07 00 10 */	lwz r0, 0x10(r7)
/* 8034A48C  7C 63 2A 14 */	add r3, r3, r5
/* 8034A490  80 87 00 1C */	lwz r4, 0x1c(r7)
/* 8034A494  7C A0 2A 14 */	add r5, r0, r5
/* 8034A498  4B FF D7 81 */	bl DVDLowRead
/* 8034A49C  48 00 02 28 */	b lbl_8034A6C4
/* 8034A4A0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A4A4  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A4A8  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A4AC  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A4B0  90 05 00 04 */	stw r0, 4(r5)
/* 8034A4B4  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A4B8  80 67 00 10 */	lwz r3, 0x10(r7)
/* 8034A4BC  4B FF D9 F5 */	bl DVDLowSeek
/* 8034A4C0  48 00 02 04 */	b lbl_8034A6C4
/* 8034A4C4  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A4C8  38 63 A6 D4 */	addi r3, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A4CC  4B FF DB 49 */	bl DVDLowStopMotor
/* 8034A4D0  48 00 01 F4 */	b lbl_8034A6C4
/* 8034A4D4  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A4D8  38 63 A6 D4 */	addi r3, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A4DC  4B FF DB 39 */	bl DVDLowStopMotor
/* 8034A4E0  48 00 01 E4 */	b lbl_8034A6C4
/* 8034A4E4  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006000@ha */
/* 8034A4E8  38 63 60 00 */	addi r3, r3, 0x6000 /* 0xCC006000@l */
/* 8034A4EC  80 03 00 04 */	lwz r0, 4(r3)
/* 8034A4F0  90 03 00 04 */	stw r0, 4(r3)
/* 8034A4F4  80 0D 92 0C */	lwz r0, AutoFinishing(r13)
/* 8034A4F8  2C 00 00 00 */	cmpwi r0, 0
/* 8034A4FC  41 82 00 24 */	beq lbl_8034A520
/* 8034A500  80 AD 91 F8 */	lwz r5, executing(r13)
/* 8034A504  38 00 00 00 */	li r0, 0
/* 8034A508  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A50C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8034A510  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A514  38 60 00 00 */	li r3, 0
/* 8034A518  4B FF DD 49 */	bl DVDLowRequestAudioStatus
/* 8034A51C  48 00 01 A8 */	b lbl_8034A6C4
lbl_8034A520:
/* 8034A520  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034A524  38 00 00 01 */	li r0, 1
/* 8034A528  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A52C  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8034A530  38 C3 A6 D4 */	addi r6, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A534  38 60 00 00 */	li r3, 0
/* 8034A538  80 87 00 14 */	lwz r4, 0x14(r7)
/* 8034A53C  80 A7 00 10 */	lwz r5, 0x10(r7)
/* 8034A540  4B FF DC 89 */	bl DVDLowAudioStream
/* 8034A544  48 00 01 80 */	b lbl_8034A6C4
/* 8034A548  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A54C  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A550  38 83 60 00 */	addi r4, r3, 0x6000
/* 8034A554  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A558  90 04 00 04 */	stw r0, 4(r4)
/* 8034A55C  38 C3 A6 D4 */	addi r6, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A560  3C 60 00 01 */	lis r3, 1
/* 8034A564  38 80 00 00 */	li r4, 0
/* 8034A568  38 A0 00 00 */	li r5, 0
/* 8034A56C  4B FF DC 5D */	bl DVDLowAudioStream
/* 8034A570  48 00 01 54 */	b lbl_8034A6C4
/* 8034A574  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A578  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A57C  38 83 60 00 */	addi r4, r3, 0x6000
/* 8034A580  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A584  90 04 00 04 */	stw r0, 4(r4)
/* 8034A588  38 00 00 01 */	li r0, 1
/* 8034A58C  38 C3 A6 D4 */	addi r6, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A590  90 0D 92 0C */	stw r0, AutoFinishing(r13)
/* 8034A594  38 60 00 00 */	li r3, 0
/* 8034A598  38 80 00 00 */	li r4, 0
/* 8034A59C  38 A0 00 00 */	li r5, 0
/* 8034A5A0  4B FF DC 29 */	bl DVDLowAudioStream
/* 8034A5A4  48 00 01 20 */	b lbl_8034A6C4
/* 8034A5A8  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A5AC  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A5B0  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A5B4  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A5B8  90 05 00 04 */	stw r0, 4(r5)
/* 8034A5BC  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A5C0  38 60 00 00 */	li r3, 0
/* 8034A5C4  4B FF DC 9D */	bl DVDLowRequestAudioStatus
/* 8034A5C8  48 00 00 FC */	b lbl_8034A6C4
/* 8034A5CC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A5D0  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A5D4  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A5D8  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A5DC  90 05 00 04 */	stw r0, 4(r5)
/* 8034A5E0  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A5E4  3C 60 00 01 */	lis r3, 1
/* 8034A5E8  4B FF DC 79 */	bl DVDLowRequestAudioStatus
/* 8034A5EC  48 00 00 D8 */	b lbl_8034A6C4
/* 8034A5F0  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A5F4  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A5F8  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A5FC  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A600  90 05 00 04 */	stw r0, 4(r5)
/* 8034A604  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A608  3C 60 00 02 */	lis r3, 2
/* 8034A60C  4B FF DC 55 */	bl DVDLowRequestAudioStatus
/* 8034A610  48 00 00 B4 */	b lbl_8034A6C4
/* 8034A614  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A618  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A61C  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A620  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A624  90 05 00 04 */	stw r0, 4(r5)
/* 8034A628  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A62C  3C 60 00 03 */	lis r3, 3
/* 8034A630  4B FF DC 31 */	bl DVDLowRequestAudioStatus
/* 8034A634  48 00 00 90 */	b lbl_8034A6C4
/* 8034A638  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A63C  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A640  38 83 60 00 */	addi r4, r3, 0x6000
/* 8034A644  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A648  90 04 00 04 */	stw r0, 4(r4)
/* 8034A64C  38 A3 A6 D4 */	addi r5, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A650  80 67 00 10 */	lwz r3, 0x10(r7)
/* 8034A654  80 87 00 14 */	lwz r4, 0x14(r7)
/* 8034A658  4B FF DC 95 */	bl DVDLowAudioBufferConfig
/* 8034A65C  48 00 00 68 */	b lbl_8034A6C4
/* 8034A660  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A664  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A668  38 A3 60 00 */	addi r5, r3, 0x6000
/* 8034A66C  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A670  90 05 00 04 */	stw r0, 4(r5)
/* 8034A674  38 00 00 20 */	li r0, 0x20
/* 8034A678  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A67C  90 07 00 1C */	stw r0, 0x1c(r7)
/* 8034A680  80 67 00 18 */	lwz r3, 0x18(r7)
/* 8034A684  4B FF DA A9 */	bl DVDLowInquiry
/* 8034A688  48 00 00 3C */	b lbl_8034A6C4
/* 8034A68C  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006004@ha */
/* 8034A690  80 03 60 04 */	lwz r0, 0x6004(r3)  /* 0xCC006004@l */
/* 8034A694  38 83 60 00 */	addi r4, r3, 0x6000
/* 8034A698  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A69C  90 04 00 04 */	stw r0, 4(r4)
/* 8034A6A0  38 63 A6 D4 */	addi r3, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A6A4  4B FF D9 71 */	bl DVDLowStopMotor
/* 8034A6A8  48 00 00 1C */	b lbl_8034A6C4
lbl_8034A6AC:
/* 8034A6AC  81 8D 84 70 */	lwz r12, checkOptionalCommand(r13)
/* 8034A6B0  3C 60 80 35 */	lis r3, cbForStateBusy@ha /* 0x8034A6D4@ha */
/* 8034A6B4  38 83 A6 D4 */	addi r4, r3, cbForStateBusy@l /* 0x8034A6D4@l */
/* 8034A6B8  7D 88 03 A6 */	mtlr r12
/* 8034A6BC  38 67 00 00 */	addi r3, r7, 0
/* 8034A6C0  4E 80 00 21 */	blrl 
lbl_8034A6C4:
/* 8034A6C4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034A6C8  38 21 00 08 */	addi r1, r1, 8
/* 8034A6CC  7C 08 03 A6 */	mtlr r0
/* 8034A6D0  4E 80 00 20 */	blr 
