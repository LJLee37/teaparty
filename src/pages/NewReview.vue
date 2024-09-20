<template>
  <q-page class="flex flex-center">
    <q-btn
      label="Add New Review"
      color="primary"
      icon="add_circle"
      @click="add_onclick"
    ></q-btn>
  </q-page>
</template>

<script setup>
import { ref } from "vue";
const teaCompany = ref("Twinings");
const teaName = ref("Cylon");
const temperature = ref(80);
const brewTime = ref(60 * 3 + 30);
const add_onclick = () => {
  console.log("Add new review");
  console.log("Tea Company: ", teaCompany.value);
  console.log("Tea Name: ", teaName.value);
  console.log("Temperature: ", temperature.value);
  console.log("Brew Time: ", brewTime.value);
};
</script>
