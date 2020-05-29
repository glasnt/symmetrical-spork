echo "This is the fourth script, fired at post-create."
gcloud run services update ${K_SERVICE} --project ${GOOGLE_CLOUD_PROJECT} --region ${GOOGLE_CLOUD_REGION} \
    --set-env-vars TARGET=${TARGET} \
    --set-env-vars EMOJI=${EMOJI} --platform managed
