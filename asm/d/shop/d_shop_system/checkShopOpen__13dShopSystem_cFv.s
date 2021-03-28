lbl_8019AB24:
/* 8019AB24  38 60 00 00 */	li r3, 0
/* 8019AB28  38 8D 81 70 */	la r4, dShopSystem_cameraActor(r13) /* 804506F0-_SDA_BASE_ */
/* 8019AB2C  38 00 00 02 */	li r0, 2
/* 8019AB30  7C 09 03 A6 */	mtctr r0
lbl_8019AB34:
/* 8019AB34  7C 04 18 2E */	lwzx r0, r4, r3
/* 8019AB38  28 00 00 00 */	cmplwi r0, 0
/* 8019AB3C  41 82 00 0C */	beq lbl_8019AB48
/* 8019AB40  38 60 00 01 */	li r3, 1
/* 8019AB44  4E 80 00 20 */	blr 
lbl_8019AB48:
/* 8019AB48  38 63 00 04 */	addi r3, r3, 4
/* 8019AB4C  42 00 FF E8 */	bdnz lbl_8019AB34
/* 8019AB50  80 6D 8A E4 */	lwz r3, dShopSystem_camera_count(r13)
/* 8019AB54  30 03 FF FF */	addic r0, r3, -1
/* 8019AB58  7C 60 19 10 */	subfe r3, r0, r3
/* 8019AB5C  4E 80 00 20 */	blr 
